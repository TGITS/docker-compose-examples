<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="valkey-docker-compose-example" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_1090958577" CREATED="1409300609620" MODIFIED="1767542000626">
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<font SIZE="14" BOLD="true"/>
<hook NAME="MapStyle" background="#f9f9f8ff">
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_tags="UNDER_NODES" show_note_icons="true" associatedTemplateLocation="template:/light_nord_template.mm" fit_to_viewport="false" show_icons="BESIDE_NODES"/>
    <tags category_separator="::"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="11" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="bezier" COLOR="#2e3440" WIDTH="3" DASH="SOLID"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" COLOR="#ffffff" BACKGROUND_COLOR="#2e3440" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true">
<font SIZE="11" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.tags">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#f6f9a1" TEXT_ALIGN="LEFT">
<icon BUILTIN="clock2"/>
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" COLOR="#eceff4" BACKGROUND_COLOR="#bf616a" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.flower" COLOR="#ffffff" BACKGROUND_COLOR="#255aba" STYLE="oval" TEXT_ALIGN="CENTER" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="22 pt" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f9d71c" BORDER_DASH_LIKE_EDGE="false" BORDER_DASH="CLOSE_DOTS" MAX_WIDTH="6 cm" MIN_WIDTH="3 cm"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="valkey-single" POSITION="bottom_or_right" ID="ID_246348881" CREATED="1708702093527" MODIFIED="1767542035744">
<font SIZE="14"/>
<node TEXT="" ID="ID_1970842797" CREATED="1708702349328" MODIFIED="1708702349328">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="dc-redis-single.yml" ID="ID_1216405956" CREATED="1708702157113" MODIFIED="1745832135751"/>
<node TEXT="" ID="ID_121908137" CREATED="1708702349325" MODIFIED="1708702349327">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="The docker-compose file to run a Valkey instance &amp; Redis Insight locally" ID="ID_161419776" CREATED="1708702349330" MODIFIED="1767542073194"/>
</node>
<node TEXT="" ID="ID_1364304676" CREATED="1747303891759" MODIFIED="1747303891759">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT=".env" ID="ID_1933529379" CREATED="1747303867135" MODIFIED="1747303870831"/>
<node TEXT="" ID="ID_492001460" CREATED="1747303891756" MODIFIED="1747303891759">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Environment variables used by the docker-compose file" ID="ID_1023051871" CREATED="1747303891761" MODIFIED="1747303894011"/>
</node>
<node TEXT="valkey" ID="ID_557869034" CREATED="1745832061569" MODIFIED="1767542093519">
<node TEXT="conf" ID="ID_1582329233" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="" ID="ID_1853012363" CREATED="1746197189633" MODIFIED="1746197189633">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="valkey.conf" ID="ID_1803671704" CREATED="1745832105008" MODIFIED="1767542111113"/>
<node TEXT="" ID="ID_1522568316" CREATED="1746197189630" MODIFIED="1746197189633">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Valkey configuration" ID="ID_938092170" CREATED="1746197189634" MODIFIED="1767542130571"/>
</node>
</node>
<node TEXT="" ID="ID_567078714" CREATED="1767542141828" MODIFIED="1767542141828">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="data" ID="ID_90204153" CREATED="1767542113897" MODIFIED="1767542119175"/>
<node TEXT="" ID="ID_594185372" CREATED="1767542141828" MODIFIED="1767542141828">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Valkey data files" ID="ID_916149574" CREATED="1767542141838" MODIFIED="1767542157220"/>
</node>
</node>
</node>
<node TEXT="valkey-bundle" POSITION="bottom_or_right" ID="ID_1126400609" CREATED="1749221761662" MODIFIED="1767542044349">
<node TEXT="" ID="ID_467205067" CREATED="1708702349328" MODIFIED="1708702349328">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="dc-redis-bundle.yml" ID="ID_635981785" CREATED="1708702157113" MODIFIED="1767542180509"/>
<node TEXT="" ID="ID_1175312284" CREATED="1708702349325" MODIFIED="1708702349327">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="The docker-compose file to run a Valkey instance with additional plugins &amp; Redis Insight locally" ID="ID_1359111446" CREATED="1708702349330" MODIFIED="1767542192659"/>
</node>
<node TEXT="" ID="ID_433726692" CREATED="1747303891759" MODIFIED="1747303891759">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT=".env" ID="ID_1716816198" CREATED="1747303867135" MODIFIED="1747303870831"/>
<node TEXT="" ID="ID_977096543" CREATED="1747303891756" MODIFIED="1747303891759">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Environment variables used by the docker-compose file" ID="ID_1382491028" CREATED="1747303891761" MODIFIED="1747303894011"/>
</node>
<node TEXT="valkey" ID="ID_1127437301" CREATED="1745832061569" MODIFIED="1767542093519">
<node TEXT="conf" ID="ID_1736327145" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="" ID="ID_1242839012" CREATED="1746197189633" MODIFIED="1746197189633">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="valkey.conf" ID="ID_424523310" CREATED="1745832105008" MODIFIED="1767542111113"/>
<node TEXT="" ID="ID_552698012" CREATED="1746197189630" MODIFIED="1746197189633">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Valkey configuration" ID="ID_551274855" CREATED="1746197189634" MODIFIED="1767542130571"/>
</node>
</node>
<node TEXT="" ID="ID_769196709" CREATED="1767542141828" MODIFIED="1767542141828">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="data" ID="ID_1074886766" CREATED="1767542113897" MODIFIED="1767542119175"/>
<node TEXT="" ID="ID_1508432300" CREATED="1767542141828" MODIFIED="1767542141828">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Valkey data files" ID="ID_769885606" CREATED="1767542141838" MODIFIED="1767542157220"/>
</node>
</node>
</node>
<node TEXT="" POSITION="bottom_or_right" ID="ID_633219974" CREATED="1708702530455" MODIFIED="1708702530455">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="pics" POSITION="bottom_or_right" ID="ID_42230839" CREATED="1708702083107" MODIFIED="1708702797716">
<font SIZE="14"/>
</node>
<node TEXT="" POSITION="bottom_or_right" ID="ID_561582841" CREATED="1708702530452" MODIFIED="1708702530454">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Pictures used by the README file" ID="ID_1797188113" CREATED="1708702530458" MODIFIED="1708797495531"/>
</node>
<node TEXT="" POSITION="bottom_or_right" ID="ID_460709620" CREATED="1746197032206" MODIFIED="1746197032206">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="assets" POSITION="bottom_or_right" ID="ID_542781415" CREATED="1708702508851" MODIFIED="1708702792406">
<font SIZE="14"/>
</node>
<node TEXT="" POSITION="bottom_or_right" ID="ID_573771247" CREATED="1746197032201" MODIFIED="1746197032205">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Miscellanous documentation files" ID="ID_1332707367" CREATED="1746197032207" MODIFIED="1746197041817"/>
</node>
<node TEXT="" POSITION="bottom_or_right" ID="ID_1290367073" CREATED="1708702313274" MODIFIED="1708702313274">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="README.md" POSITION="bottom_or_right" ID="ID_1921610110" CREATED="1708702201160" MODIFIED="1708702797721">
<font SIZE="14"/>
</node>
<node TEXT="" POSITION="bottom_or_right" ID="ID_123759240" CREATED="1708702313272" MODIFIED="1708702313274">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="README file" ID="ID_376695135" CREATED="1708702313276" MODIFIED="1708797486633"/>
</node>
</node>
</map>
