' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********
'setting top interfaces
sub Init()
    m.top.Title = m.top.findNode("Title")
    m.top.Creator = m.top.findNode("Creator")
    m.top.Description = m.top.findNode("Description")
    m.top.ReleaseDate = m.top.findNode("ReleaseDate")

    m.top.Title.color = m.global.theme.primary_text_color
    m.top.Creator.color = m.global.theme.secondary_text_color
    m.top.ReleaseDate.color = m.global.theme.secondary_text_color
    m.top.Description.color = m.global.theme.secondary_text_color
end sub

' Content change handler
' All fields population
sub OnContentChanged()
    item = m.top.content

    title = item.title.toStr()
    if title <> invalid then
        m.top.Title.text = title.toStr()
    end if

    creator = item.creator
    if creator <> invalid then
        m.top.Creator.text = creator.toStr()
    end if

    description = item.description
    if description <> invalid then
        m.top.Description.text = description.toStr()
    end if

    releaseDate = item.ReleaseDate
    if releaseDate <> invalid then
        if releaseDate <> ""
            m.top.ReleaseDate.text = releaseDate.toStr()
        else
            m.top.ReleaseDate.text = "No release date"
        end if
    end if
end sub
