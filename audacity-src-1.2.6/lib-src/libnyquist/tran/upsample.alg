(UP-ALG
  (NAME "up")
  (ARGUMENTS ("rate_type" "sr") ("sound_type" "input"))
  (INLINE-INTERPOLATION T)
  (SAMPLE-RATE "sr")
  (START (MIN input))
  (INNER-LOOP "output = (sample_type) input")
  (LINEAR input)
  (TERMINATE (MIN input))
  (LOGICAL-STOP (MIN input))
  (TYPE-CHECK
"    if (input->sr > sr) {
        sound_unref(input);
        xlfail(\"snd-up: output sample rate must be higher than input\");
    }
")
)

