#!/bin/bash

# Ubuntu by default doesn't handle bluetooth headphones well for switching from High Fidelity Playback (music)
# to Handsfree (meetings/microphone). This script automatically detects your bluetooth headphone and switches the modes.
# I recommend adding a custom alias "btswitch" to your shell that automatically runs this script.

# Automatically find the current Bluetooth headset
BT_DEVICE=$(pactl list cards short | grep 'bluez_card' | cut -f2)

# Fetch the current profile of the device
CURRENT_PROFILE=$(pactl list cards | grep -A 25 "$BT_DEVICE" | grep 'Active Profile' | cut -d':' -f2 | xargs)

echo "Current profile is: $CURRENT_PROFILE"

if [ "$CURRENT_PROFILE" = "a2dp_sink" ]; then
    # Switch to HFP
    pactl set-card-profile "$BT_DEVICE" handsfree_head_unit
    echo "Switched to HFP (Handsfree)"
elif [ "$CURRENT_PROFILE" = "handsfree_head_unit" ]; then
    # Switch back to A2DP
    pactl set-card-profile "$BT_DEVICE" a2dp_sink
    echo "Switched to A2DP (High Fidelity Playback)"
else
    echo "Current profile not identified."
fi
