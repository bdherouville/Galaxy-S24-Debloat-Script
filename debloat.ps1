# List of apps to uninstall
$apps = @(
    "com.microsoft.office.outlook",
    "com.samsung.android.bixby.ondevice.frfr",
    "com.google.android.apps.photos",
    "com.sec.android.app.sbrowser",
    "com.samsung.android.calendar",
    "com.samsung.android.app.reminder",
    "com.google.android.apps.youtube.music",
    "com.sec.android.app.shealth",
    "com.samsung.android.nmt.apps.t2t.languagepack.enfr",
    "com.sec.android.app.popupcalculator",
    "com.booking.aidprovider",
    "com.samsung.SMT.lang_en_us_l03",
    "com.samsung.android.bixby.ondevice.enus",
    "com.google.android.apps.docs",
    "com.samsung.android.arzone",
    "com.samsung.android.voc",
    "com.samsung.android.app.tips",
    "com.sec.android.app.clockpackage",
    "com.samsung.android.app.find",
    "com.samsung.android.app.notes",
    "com.amazon.appmanager",
    "com.google.android.videos",
    "com.sec.android.app.voicenote",
    "com.amazon.mShop.android.shopping",
    "com.facebook.katana",
    "com.samsung.sree",
    "com.samsung.android.app.spage",
    "com.samsung.android.oneconnect",
    "com.samsung.android.game.gamehome",
    "com.samsung.SMT.lang_fr_fr_l01",
    "com.microsoft.office.officehubrow",
    "com.samsung.android.spay",
    "com.samsung.android.app.watchmanager",
    "com.samsung.android.tvplus",
    "com.sec.android.app.kidshome",
    "com.booking"
)

# Loop through the apps and try to uninstall each one
foreach ($app in $apps) {
    try {
        # Run adb uninstall command
        adb uninstall $app
        Write-Host "Successfully uninstalled $app"
    } catch {
        # Catch any errors and continue
        Write-Host "Failed to uninstall $app. Error: $_"
    }
}



# List of packages to disable
$packages = @(
    "com.aura.oobe.samsung",
    "com.samsung.android.app.camera.sticker.facearavatar.preload",
    "com.samsung.android.app.omcagent",
    "com.samsung.android.app.parentalcare",
    "com.samsung.android.appseparation",
    "com.samsung.android.ardrawing",
    "com.samsung.android.aremoji",
    "com.samsung.android.aremojieditor",
    "com.samsung.android.bixby.agent",
    "com.samsung.android.bixby.wakeup",
    "com.samsung.android.bixbyvision.framework",
    "com.samsung.android.dkey",
    "com.samsung.android.fmm",
    "com.samsung.android.game.gametools",
    "com.samsung.android.game.gos",
    "com.samsung.android.ipsgeofence",
    "com.samsung.android.kidsinstaller",
    "com.samsung.android.mdecservice",
    "com.samsung.android.mdx",
    "com.samsung.android.messaging",
    "com.samsung.android.samsungpass",
    "com.samsung.android.samsungpassautofill",
    "com.samsung.android.smartswitchassistant",
    "com.samsung.android.spayfw",
    "com.samsung.android.rubin.app",
    "com.samsung.storyservice",
    "com.sec.android.app.billing",
    "com.sec.android.easyMover.Agent",
    "com.sec.android.easyMover",
    "com.sec.android.mimage.avatarstickers",
    "com.android.apps.tag",
    "com.android.bookmarkprovider",
    "com.android.chrome",
    "com.android.dreams.basic",
    "com.android.dreams.phototable",
    "com.android.hotwordenrollment.okgoogle",
    "com.android.hotwordenrollment.xgoogle",
    "com.android.providers.partnerbookmarks",
    "com.google.android.apps.googleassistant",
    "com.google.android.apps.tachyon",
    "com.google.android.gm",
    "com.google.android.gms.location.history",
    "com.google.android.googlequicksearchbox",
    "com.google.android.health.connect.backuprestore",
    "com.google.android.healthconnect.controller",
    "com.google.android.onetimeinitializer",
    "com.google.android.projection.gearhead",
    "com.google.android.setupwizard",
    "com.google.android.syncadapters.calendar",
    "com.google.android.youtube",
    "com.google.ar.core",
    "com.sec.android.app.chromecustomizations",
    "com.sec.android.daemonapp",
    "com.sec.android.mimage.avatarstickers",
    "com.facebook.services",
    "com.facebook.appmanager",
    "com.microsoft.appmanager",
    "com.microsoft.skydrive"
)

# Loop through each package and disable it
foreach ($package in $packages) {
    try {
        adb shell pm disable-user --user 0 $package
        Write-Host "Successfully disabled $package"
    } catch {
        Write-Host "Failed to disable $package. Error: $_"
    }
}
