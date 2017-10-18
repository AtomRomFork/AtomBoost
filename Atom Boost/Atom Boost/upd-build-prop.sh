#!/system/bin/sh
#=======================================================================#
#
#          _______ ____  __  __ ____     ____   ____   _____ _______ 
#       /\|__   __/ __ \|  \/  |  _ \   / __ \ / __ \ / ____|__   __|
#      /  \  | | | |  | | \  / | |_) | | |  | | |  | | (___    | |   
#     / /\ \ | | | |  | | |\/| |  _ <| | |  | | |  | |\___ \   | |   
#    / ____ \| | | |__| | |  | | |_) | | |__| | |__| |____) |  | |   
#   /_/    \_\_|  \____/|_|  |_|____/   \____/ \____/|_____/   |_|   
#
#=======================================================================#
sys=$(find /dev/block/platform -name system)

mount -o rw,remount $sys

# Backup do build.prop --> /system/build.prop.bak

cp /system/build.prop /system/build.prop.bak

echo "" >> /system/build.prop
echo "### AtomBoost ###" >> /system/build.prop
echo "" >> /system/build.prop
echo "# Códigos para melhoria da bateria" >> /system/build.prop
echo "wifi.supplicant_scan_interval=150" >> /system/build.prop
echo "ro.config.hw_fast_dormancy=1" >> /system/build.prop
echo "power_supply.wakeup=enable" >> /system/build.prop
echo "ro.config.hw_power_saving=1" >> /system/build.prop
echo "power.saving.mode=1" >> /system/build.prop
echo "ro.ril.disable.power.collapse=1" >> /system/build.prop
echo "pm.sleep_mode=1" >> /system/build.prop

echo "### Aceleração por Hardware" >> /system/build.prop
echo "video.accelerate.hw=1" >> /system/build.prop
echo "debug.performance.tuning=1" >> /system/build.prop
echo "debug.hwui.render_dirty_regions=false" >> /system/build.prop

echo "### Permite limpar a memória Ram quando necessário " >> /system/build.prop
echo "persist.sys.purgeable_assets=1" >> /system/build.prop

echo "### Habilita transparencia de 16Bits" >> /system/build.prop
echo "persist.sys.use_16bpp_alpha=1" >> /system/build.prop

echo "### Habilita Largura de banda Multi-Direcional" >> /system/build.prop
echo "ro.ril.enable.amr.wideband=1" >> /system/build.prop

echo "### Aumenta a qualidade do .jpg para 100%" >> /system/build.prop
echo "ro.media.dec.jpeg.memcap=8000000" >> /system/build.prop
echo "ro.media.enc.jpeg.quality=100" >> /system/build.prop

echo "### Habilita o modo Quick-Power-On para reduzir o boot-time" >> /system/build.prop
echo "ro.config.hw_quickpoweron=true" >> /system/build.prop

echo "### Códigos aleatórios para melhoria de desmpenho" >> /system/build.prop
echo "ro.max.fling_velocity=4000" >> /system/build.prop
echo "debug.enabletr=true" >> /system/build.prop
echo "windowsmgr.max_events_per_sec=240" >> /system/build.prop
echo "fb.force.dithering=0 " >> /system/build.prop

echo "### Estabilizador de FPS" >> /system/build.prop
echo "debug.sf.showupdates=0" >> /system/build.prop
echo "debug.sf.showcpu=0" >> /system/build.prop
echo "debug.sf.showbackground=0" >> /system/build.prop
echo "debug.sf.showfps=0" >> /system/build.prop

echo "### Disabilita Logging" >> /system/build.prop
echo "ro.config.nocheckin=1" >> /system/build.prop
echo "profile.force_disable_ulog=1" >> /system/build.prop
echo "profiler.force_disable_err_rpt=1" >> /system/build.prop

echo "### Desabilita a checagem de erros" >> /system/build.prop
echo "ro.kernel.android.checkjni=0" >> /system/build.prop
echo "ro.kernel.checkjni=0" >> /system/build.prop

echo "### Teste" >> /system/build.prop
echo "enforce_process_limit=4" >> /system/build.prop

echo "### Melhora a conexão 3G" >> /system/build.prop
echo "ro.ril.hsxpa=2 " >> /system/build.prop
echo "ro.ril.gprsclass=10 " >> /system/build.prop
echo "ro.ril.hep=1 " >> /system/build.prop
echo "ro.ril.enable.dtm=1 " >> /system/build.prop
echo "ro.ril.hsdpa.category=10 " >> /system/build.prop
echo "ro.ril.enable.a53=1 " >> /system/build.prop
echo "ro.ril.enable.3g.prefix=1 " >> /system/build.prop
echo "ro.ril.htcmaskw1.bitmask=4294967295 " >> /system/build.prop
echo "ro.ril.htcmaskw1=14449 " >> /system/build.prop
echo "ro.ril.hsupa.category=5" >> /system/build.prop
echo "### AtomBoost ###" >> /system/build.prop

mount -o remount,ro $sys
