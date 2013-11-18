#!/usr/bin/env perl

@ins = (
    "Total",
    "Freq",
    "Ext-signal-in",
    "VCHPF-cutoff-in",
    "VCLPF-cutoff-in",
    "VCA-initial",
    "VCO1+2-CV-in",
    "VCO2-CV-in",
    "S&H-clock-in",
    "VCA-CV-in",
    "EG1-trigger-in",
    "Trig-in",
    "S&H-in",
    "VCA-in",
    "ESP-signal-in",
);

@outs = (
    "Signal-out",
    "Headphone-out",
    "MG-triangle-out",
    "MG-pulse-out",
    "EG1-out",
    "EG2-rev-out",
    "KBD-CV-out",
    "EG1-rev-out",
    "KBD-trig-out",
    "S&H-out",
    "VCA-out",
    "Pink",
    "White",
    "Wheel",
    "Momentary",
    "ESP-signal-out",
    "ESP-BPF-out",
    "ESP-FVCV-out",
    "ESP-EFCV-out",
    "ESP-trig-out",
);

foreach $output (@outs) {
    foreach $input (@ins) {
        printf("%s -> %s\n", $output, $input);
    }
}

