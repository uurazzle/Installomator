archaeology)
    name="Archaeology"
    type="dmg"
    downloadURL="https://mothersruin.com/software/downloads/Archaeology.dmg"
    appNewVersion="$(curl -fs https://mothersruin.com/software/Archaeology/get.html | grep 'class="version"' | sed 's/.*<td class="version">\(.*\)<\/td>.*/\1/' | awk '{print $1}')"
    expectedTeamID="936EB786NH"
    ;;
