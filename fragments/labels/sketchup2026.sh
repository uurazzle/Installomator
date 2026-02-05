sketchup2026)
    name="SketchUp 2026"
    type="dmg"
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    downloadURL="$(curl -s https://sketchup.trimble.com/en/download/all | grep -o 'https://download.sketchup.com/SketchUp-2026[^"]*.dmg')"
    folderName="SketchUp 2026"
    appName="${folderName}/SketchUp.app"
    appNewVersion=$(echo "$downloadURL" | grep -o 'SketchUp-20[0-9][0-9]-[0-9]*-[0-9]*' | awk -F '-' '{year=substr($2, 3, 2); if (year >= 24) printf "%d.0.%s", year, $NF; else printf "%d.%s", year+2000, $NF}')
=======
=======
>>>>>>> Stashed changes
    downloadURL=$(curl -sfL https://www.sketchup.com/download/all | grep -o 'https://sketchup.trimble.com/sketchup/2026/SketchUpPro-dmg' | head -1 | xargs -I {} curl -sfLI -o /dev/null -w '%{url_effective}' {})
    folderName="SketchUp 2026"
    appName="${folderName}/SketchUp.app"
    appNewVersion=$(echo "$downloadURL" | grep -o '2026-[0-9]*-[0-9]*-[0-9]*' | sed 's/2026-/26./;s/-/./g')
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
    versionKey="CFBundleVersion"
    expectedTeamID="J8PVMCY7KL"
    ;;
