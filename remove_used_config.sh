[ -f configs/config_rk3328 ] && sed -i '/=m/d;/CONFIG_IB/d;/CONFIG_SDK/d;/CONFIG_BUILDBOT/d;/CONFIG_ALL_KMODS/d;/CONFIG_ALL_NONSHARED/d;/docker/d;/DOCKER/d;/CONFIG_DISPLAY_SUPPORT/d;/CONFIG_AUDIO_SUPPORT/d' configs/config_rk3328
[ -f configs/config_rk3328 ] && sed -i '/iptparser/d' configs/config_rk3328
