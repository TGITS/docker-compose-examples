<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="redis-docker-compose-examples" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_1090958577" CREATED="1409300609620" MODIFIED="1745831980629">
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
<node TEXT="redis-community-single" POSITION="bottom_or_right" ID="ID_246348881" CREATED="1708702093527" MODIFIED="1745831993686">
<font SIZE="14"/>
<node TEXT="" ID="ID_1970842797" CREATED="1708702349328" MODIFIED="1708702349328">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="dc-redis-single.yml" ID="ID_1216405956" CREATED="1708702157113" MODIFIED="1745832135751"/>
<node TEXT="" ID="ID_121908137" CREATED="1708702349325" MODIFIED="1708702349327">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="The docker-compose file to run a postgreSQL instance" ID="ID_161419776" CREATED="1708702349330" MODIFIED="1745679830076"/>
</node>
<node TEXT="redis" ID="ID_557869034" CREATED="1745832061569" MODIFIED="1745832065912">
<node TEXT="conf" ID="ID_1582329233" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="redis.conf" ID="ID_1803671704" CREATED="1745832105008" MODIFIED="1745832121375"/>
</node>
<node TEXT="data" ID="ID_581503336" CREATED="1745832095039" MODIFIED="1745832098312"/>
</node>
</node>
<node TEXT="redis-community-cluster" POSITION="bottom_or_right" ID="ID_1590569630" CREATED="1745832164607" MODIFIED="1745832201879">
<node TEXT="" ID="ID_344407218" CREATED="1708702349328" MODIFIED="1708702349328">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="dc-redis-cluster.yml" ID="ID_1658239509" CREATED="1708702157113" MODIFIED="1745832224591"/>
<node TEXT="" ID="ID_214484356" CREATED="1708702349325" MODIFIED="1708702349327">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="The docker-compose file to run a postgreSQL instance" ID="ID_142269517" CREATED="1708702349330" MODIFIED="1745679830076"/>
</node>
<node TEXT="redis-1" ID="ID_1086614706" CREATED="1745832061569" MODIFIED="1745832234520">
<node TEXT="conf" ID="ID_1474446507" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="redis.conf" ID="ID_188432377" CREATED="1745832105008" MODIFIED="1745832121375"/>
</node>
<node TEXT="data" ID="ID_1790834982" CREATED="1745832095039" MODIFIED="1745832098312"/>
</node>
<node TEXT="redis-2" ID="ID_794195099" CREATED="1745832061569" MODIFIED="1745832241231">
<node TEXT="conf" ID="ID_865876541" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="redis.conf" ID="ID_90457094" CREATED="1745832105008" MODIFIED="1745832121375"/>
</node>
<node TEXT="data" ID="ID_1588622586" CREATED="1745832095039" MODIFIED="1745832098312"/>
</node>
<node TEXT="redis-3" ID="ID_1646466918" CREATED="1745832061569" MODIFIED="1745832247343">
<node TEXT="conf" ID="ID_390561225" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="redis.conf" ID="ID_191904369" CREATED="1745832105008" MODIFIED="1745832121375"/>
</node>
<node TEXT="data" ID="ID_1575887132" CREATED="1745832095039" MODIFIED="1745832098312"/>
</node>
<node TEXT="redis-4" ID="ID_1904267571" CREATED="1745832061569" MODIFIED="1745832252903">
<node TEXT="conf" ID="ID_633790958" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="redis.conf" ID="ID_341772674" CREATED="1745832105008" MODIFIED="1745832121375"/>
</node>
<node TEXT="data" ID="ID_171200097" CREATED="1745832095039" MODIFIED="1745832098312"/>
</node>
<node TEXT="redis-5" ID="ID_1713872418" CREATED="1745832061569" MODIFIED="1745832257960">
<node TEXT="conf" ID="ID_592062571" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="redis.conf" ID="ID_1398885702" CREATED="1745832105008" MODIFIED="1745832121375"/>
</node>
<node TEXT="data" ID="ID_259069137" CREATED="1745832095039" MODIFIED="1745832098312"/>
</node>
<node TEXT="redis-6" ID="ID_1144031394" CREATED="1745832061569" MODIFIED="1745832263647">
<node TEXT="conf" ID="ID_1584938834" CREATED="1745832088185" MODIFIED="1745832093608">
<node TEXT="redis.conf" ID="ID_567316017" CREATED="1745832105008" MODIFIED="1745832121375"/>
</node>
<node TEXT="data" ID="ID_1248161394" CREATED="1745832095039" MODIFIED="1745832098312"/>
</node>
</node>
<node TEXT="" POSITION="bottom_or_right" ID="ID_1298465235" CREATED="1708702562942" MODIFIED="1708702562942">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="assets" POSITION="bottom_or_right" ID="ID_542781415" CREATED="1708702508851" MODIFIED="1708702792406">
<font SIZE="14"/>
</node>
<node TEXT="" POSITION="bottom_or_right" ID="ID_438281157" CREATED="1708702562940" MODIFIED="1708702562941">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Miscellanous documentation files" ID="ID_1950366891" CREATED="1708702562943" MODIFIED="1708702648325"/>
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
