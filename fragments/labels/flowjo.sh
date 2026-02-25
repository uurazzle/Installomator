flowjo)
    name="FlowJo"
    appName="FlowJo 11.app"
    type="dmg"
    appNewVersion=$(curl -fsL "https://www.flowjo.com/flowjo/download" | grep -o 'FlowJo-[0-9.]*-arm64\.dmg' | head -1 | sed 's/FlowJo-\([0-9.]*\)-arm64\.dmg/\1/')
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://downloads.bdaccessportal.com/v11/mac/arm64/FlowJo-${appNewVersion}-arm64.dmg"
    else
        downloadURL="https://downloads.bdaccessportal.com/v11/mac/x64/FlowJo-${appNewVersion}-x64.dmg"
    fi
    expectedTeamID="C79HU5AD9V"
    ;;
