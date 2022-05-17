------------------------------------------------
--- Road to Discovery für BG:SoD und EET:SoD ---
------------------------------------------------

von jastey
mit einer Komponente von Lauriel

INHALTSVERZEICHNIS
--INHALT
--KOMPONENTENBESCHREIBUNGEN
--KOMPATIBILITÄTSHINWEIS
--HINWEIS AN ALLE ÜBERSETZER UND SPIELER DER DEUTSCHEN VERSION
--INSTALLATION
--ÜBERSICHT ÜBER NACHVERFOLGTES WISSEN
--VARIABLENSYSTEM: ALLGEMEINE BESCHREIBUNG FÜR MODDER
--DANKSAGUNGEN
--VERWENDETE TOOLS UND RESSOURCEN
--ÄNDERUNGSHISTORIE
--COPYRIGHT-HINWEIS


INHALT

Diese Tweak-Mod ist für die SoD-Kampagne konzipiert (auch mit nativer EET-Kompatibilität).
Sie dient zwei Zwecken:

Für Spieler zielt diese Mod darauf ab, die Bündnistruppen über die Pläne von Caelar und Ifearnan aufzuklären, wobei der Fokus auf dem eigentlich wichtigen Ziel und der Gefahr des Kreuzzuges liegt, und Antwortmöglichkeiten zu geben, mit denen der HC die Bündnistruppen über die Geschehnisse informieren kann. Dazu werden alle Informationen, die der HC während des Feldzuges sammeln kann, verfolgt und ausgewertet. Tagebucheinträge geben einen Überblick darüber, welche Informationen der HC bereits gesammelt hat.
Alles in allem soll diese Mod Zusammenhänge herstellen, sodass der HC in der Lage ist, über all die Insider-Informationen zu berichten, die er gesammelt hat, und dass die Offiziere des Bündnisses die tatsächliche(n) Gefahr(en) erkennen und darauf reagieren können.

Für Modder führt diese Mod ein Variablensystem zur Verfolgung der verschiedenen Wissensstände ein, die der HC und die Offiziere des Bündnisses im Laufe der Kampagne erlangen. Dieses System kann für eigene Mods verwendet werden, z. B. zur Feinabstimmung der Reaktionen der NSCs auf die Tiefe der gewonnenen Informationen über Caelar, Ifearnan und den Kreuzzug, aber auch auf die Auftritte des vermummten Manns. Eigene Reaktionsmods, die auf beliebigen Komponenten von „Road to Discovery“ basieren, können von jedem entwickelt werden, der dies möchte, solange diese Mods (Komponenten von) RtD zur Voraussetzung machen und keine veränderten Inhalte dieser Mod enthalten oder irgendetwelche von RtDs Originaltexten verändern.

Die Mod ist modular aufgebaut, sodass jeder Spieler und Modder selbst entscheiden kann, wie viele Änderungen und Inhalte er/sie sehen oder verwenden möchte.

Im Folgenden sind die Informationen aus der SoD-Kampagne aufgelistet, die diese Mod berücksichtigt. Für eine detaillierte Beschreibung der verwendeten Variablen und die genaue Definition der verfolgten Informationen siehe unten:
- Was ist der Hauptzweck des Kreuzzuges – was verkündet Caelar, und was ist er wirklich?
- Welcher Wahrheitsgehalt liegt in Caelars Verkündigung – und dem Glauben ihrer Kreuzzügler –, dass Caelar den Kreuzzug mit „göttlichen Kräften des Pantheons“ schützt?
- Was ist der Hintergrund von Caelars Leben und Familie, und wie beeinflusst er ihre Motive?
- Ist Caelar ein Kind des Bhaal?
- Caelar wird verraten? Von wem?
- Was sind Ifearnans Pläne?
- Der vermummte Mann stellt dem HC nach, und warum?
- Was wollen Caelar und Ifearnan vom HC?
- Wofür war der Angriff im Palast mit dem schwachen Gift?


KOMPONENTENBESCHREIBUNGEN

Die Mod besteht aus 9 Komponenten, von denen die meisten optional sind.

1 Stat-basierte Beobachtungen und Quest-Optionen von „Lauriel's Themed Tweaks Mod“
---------------------------------------------

Dies importiert die Komponente „Stat-basierte Beobachtungen und Quest-Optionen“ aus „Lauriel's Themed Tweaks Mod“. Installiere diese Komponente, wenn du tiefgreifendere und konsistentere Reaktionen auf die folgenden Ereignisse im Spiel wünschst, um der Gruppe die gewonnenen Informationen mitzuteilen:
- Herzogin Jannaths Information über das schwache Gift von Caelars Palast-Attentätern (und alle späteren Antwortoptionen bzgl. Caelars Versuch, den HC im Palast töten zu lassen): Der HC erkennt, dass der Angriff nicht zum Töten gedacht war;
- Abhandlung über das Portal unter Burg Drachenspeer: Reaktionen der NSCs auf die Enthüllungen über das Portal unter Burg Drachenspeer und wie man es öffnen kann;
- Edwin soll Ifearnan (einschließlich seiner Pläne) im Wahrsagungsbecken identifizieren, bevor der/die HC ihn in Persona getroffen hat;
- die Herzöge den gefallenen Paladin Dauston befragen lassen, um mehr über Caelars Hintergrund – und ihre Motive – zu erfahren;
- die Komponente fügt auch einige weitere Antwortmöglichkeiten an geeigneten Stellen hinzu, um die Erfahrungen des HCs widerzuspiegeln, z. B. den Herzögen zu berichten, nachdem man den vermummten Mann im Palast getroffen hat.
Wenn die Komponente über „Themed Tweaks“ installiert wird, wird sie hier übersprungen.
Diese Komponente ist optional. 
Hinweis: Diese Komponente funktioniert auch ohne eine der anderen Komponenten. 
Die Komponente 2 „Hauptkomponente“ stellt auch die benötigten grundlegenden Tracking-Variablen für die hier aufgelisteten Ereignisse im Spiel bereit, falls diese Komponente nicht installiert ist. 
Die Installation von Komponente 1 (oder der gleichen Komponente von „Themed Tweaks“) wird für das gesamte Spielerlebnis empfohlen.

2 Hauptkomponente: Tracking-System
---------------------------------------------
Komponente 2 ist die Hauptkomponente von „Road to Discovery“, die das auf Variablen basierende Verfolgungssystem sowie die Handhabung von Tagebucheinträgen für den Wissensstand einfügt, den diese Mod wie unten beschrieben verfolgt.
Diese Komponente fügt keine Reaktionen oder Antwortoptionen hinzu, sie hat für sich genommen keine Auswirkungen auf die Spieler.
Hinweis: Diese Komponente wird für alle folgenden Komponenten benötigt und wäre die Basis für alle anderen Mods, die das Informationsverfolgungssystem nutzen wollen.

3 Konsistenzänderungen an Spieldialogen
---------------------------------------------
Komponente 3 deaktiviert Antwortoptionen aus dem Originalspiel, die keinen Sinn mehr machen, wenn der HC über ein tieferes Wissen über die Geschehnisse verfügt. Wenn der HC zum Beispiel Ifearnan an der Küstenwegquerung getroffen hat, macht es keinen Sinn, eine Antwortoption zu haben, die den HC „Ifeawer?“ fragen lässt, wenn er mit Edwin spricht, oder ihn „Was könnte [Caelar] von mir wollen?“ nach der Unterredung am Totmannpass sagen zu lassen, wenn er bereits genau weiß, wofür Caelar den HC braucht. Diese Komponente fügt keine neuen Inhalte/Antwortoptionen hinzu, dies wird in Komponente 5 "HC erhält umfangreichere Antwortmöglichkeiten" erledigt.
Diese Komponente ist optional.
Hinweis: Alle Hinweise darauf, dass Caelars Attentäter versuchen, den HC zu „töten“, obwohl die Schwäche des Giftes bekannt ist, werden durch diese Komponente nicht verändert. Installiere dafür Lauriels Komponente „Stat-basierte Beobachtungen und Quest-Optionen“, entweder über RtD oder „Themed Tweaks“.

4 Offiziere wissen Bescheid
---------------------------------------------
Komponente 4 fügt meine Ansicht darüber hinzu, was die Offiziere im Laufe der Kampagne wissen würden, ohne dass der HC es ihnen sagt. Aus dem ersten Treffen im großen Bündnislager wissen wir, dass sie zum Beispiel gefangene Kreuzzügler verhören, und der ursprüngliche Dialog mit De Lancie verrät ihre eigenen Nachforschungen über Caelar. 
Nichtsdestotrotz konzentriert sich diese Komponente darauf, das Wissen der Offiziere über die Ziele und Geheimnisse des Kreuzzuges auf ein absolutes Minimum zu beschränken, um die Spielerfahrung nicht zu beeinträchtigen, dass der HC derjenige ist, der die wirklich entscheidenden Informationen zusammenträgt.
Hinweis: Diese Komponente fügt KEINE Reaktionen der Offiziere hinzu, sondern nur den Grad ihres Wissens und ihrer Aufmerksamkeit, damit sie in den späteren Komponenten verwendet werden kann.
Diese Komponente ist optional, wird aber für Komponente 7 „Neue Reaktionen der Offiziere“ benötigt.

5 HC erhält umfangreichere Antwortmöglichkeiten
---------------------------------------------
Diese Komponente fügt konsistente Antwortoptionen zu relevanten Spieldialogen hinzu, die den Wissensstand des HCs widerspiegeln. Zum einen fügt sie entsprechende Antwortoptionen hinzu, wo Komponente 3 „Konsistenzänderungen an Spieldialogen“ die unpassenden entfernt hat, mit Ausnahme der erwähnten Fälle in Bezug auf das schwache Gift, das Inhalt von Lauriels „Stat-basierte Beobachtungen und Quest-Optionen“ ist. Komponente 5 fügt auch Optionen für umfangreichere Antworten an Stellen hinzu, an denen der HC mit Spielcharakteren über die Geschehnisse spricht, aber sie fügt keine Optionen hinzu, um die Offiziere über die Erkenntnisse des HCs zu informieren, dies wird in Komponente 6 „HC kann den Offizieren berichten“ gemacht.
Diese Komponente ist optional.
Sie erfordert Komponente 3 „Konsistenzänderungen an Spieldialogen“ und muss nach Komponente 4 „Offiziere wissen Bescheid“ installiert werden, wenn Komponente 4 installiert ist.

6 HC kann den Offizieren berichten
---------------------------------------------
Diese Komponente fügt die Möglichkeit für den HC hinzu, die Herzöge und Offiziere über die gesammelten Informationen während der Kampagne in Bezug auf die verfolgten Informationen zu informieren (z. B. Caelars tiefere Pläne, Ifearnans Verrat, das Portal und das benötigte Bhaal-Blut und der vermummte Mann). Die Offiziere nehmen die Informationen zur Kenntnis und geben kurze Kommentare als Antwort. Abgesehen davon gibt es keine Änderungen an den Dialogen oder andere Ergänzungen. Für weitere, ausführliche Reaktionen der Offiziere, installiere Komponente 7 „Neue Reaktionen der Offiziere“.
Charaktere, denen der HC mit dieser Komponente von Caelars Plänen erzählen kann, sind:
- Hauptmann Corwin vor dem Angriff auf die Burg (d. h. die ersten drei Lagerbereiche), sofern sie nicht in der Gruppe ist.
- Korporal Bence Duncan in den ersten beiden Lagern (Küstenwegquerung und Trollklauenwälder), sofern er verfügbar ist.
- Torsin De Lancie, sofern er verfügbar ist.
- Marschall Nederlock im großen Bündnislager (bd3000).
Diese Komponente ist optional, wird aber für Komponente 7 „Neue Reaktionen der Offiziere“ benötigt.

7 Neue Reaktionen der Offiziere
---------------------------------------------
Diese Komponente ist meine Ansicht darüber, wie die Offiziere auf das Hauptziel des Kreuzzuges reagieren sollten, je nachdem, wie viel sie wissen.
Komponente 7 fügt die Reaktionen der Offiziere auf die Bedrohung in Dialogen hinzu, je nachdem, wie viele Informationen sie über die Vorgänge im Zusammenhang mit dem Kreuzzug und den anderen, unten beschriebenen Fällen erhalten haben: Es gibt neue Dialogzeilen bei der Zusammenkunft der drei Offiziere Generalin Steinhand, Marschall Nederlock und Torsin De Lancie im großen Bündnislager, sowie Reaktionen der drei, als sie von dem Portal und der Rolle des HCs, es zu öffnen, erfahren. Zudem werden die Offiziere den HC bitten, nach detaillierteren Informationen über Caelars Pläne Ausschau zu halten. Das Gespräch mit Caelar wird anders verlaufen, wenn die Offiziere wissen, wofür Caelar das Bhaal-Blut braucht, und vieles mehr.
Diese Komponente ist optional und benötigt außerdem die Komponenten 4 „Offiziere wissen Bescheid“ und 6 „HC kann den Offizieren berichten“.

8 Zusätzliche Informationsquellen
---------------------------------------------
Komponente 8 fügt ein paar weitere Möglichkeiten hinzu, um Informationen über Caelars Pläne zu sammeln, die in Komponente 1 „Stat-basierte Beobachtungen und Quest-Optionen von ‚Lauriel's Themed Tweaks Mod‘“ nicht berücksichtigt wurden. Zum Beispiel können die Kreuzzügler im Burglager genauer nach den Plänen des Kreuzzuges befragt werden und das „Segnungsritual“ im Lager an der Eberfellbrücke kann analysiert werden, sofern ein Kleriker oder Paladin in der Gruppe ist.
Diese Komponente ist optional.

9 Zusätzliche Offiziersreaktionen
---------------------------------------------
Komponente 9 fügt einen benutzerdefinierten Charakter, Sir Deggernaut, hinzu, der sich während der Kampagne von Lager zu Lager bewegt, um eine direkte Kommunikation zu ermöglichen, sodass der HC seine Erkenntnisse immer mitteilen kann, unabhängig von der Erreichbarkeit der Offiziere des Originalspiels aufgrund des Kampagnenfortschritts. Sein Dialog bietet auch die Möglichkeit, ihn nach dem Wissensstand der Offiziere zu befragen, wobei er alles auflistet, was die Offiziere zu diesem Zeitpunkt wissen – was je nach Kampagnenfortschritt mehr sein kann, als der HC herausgefunden hat. 
Sir Deggernaut ist bei den Lagerzelten in den ersten beiden Lagern und in der Nähe von Mizhena im großen Bündnislager zu finden.
Diese Komponente ist optional und benötigt außerdem die Komponenten 4 „Offiziere wissen Bescheid“ und 6 „HC kann den Offizieren berichten“. 


KOMPATIBILITÄTSHINWEIS

Installiere „Road to Discovery“ sehr spät in der Installationsreihenfolge. Diese Mod sollte NACH den folgenden Mods installiert werden:
- „Themed Tweaks“
- „Jasteys SoD Tweakpack“
jede Mod, die Antwortoptionen oder Transaktionen zu SoD hinzufügt, wie NSC-Mods oder Story-Tweak-Mods.

„Road to Discovery“ ist nativ EET-kompatibel und muss vor EET_End installiert werden.


HINWEIS AN ALLE ÜBERSETZER UND SPIELER DER DEUTSCHEN VERSION

Übersetzer: Beachtet bitte, dass die tra-Dateien bereits in utf-8 vorliegen, und nicht wie sonst in meinen Mods üblich in ANSI. Beachtet bitte auch was in der Datei "sodrtd/docs/note_to_translators.txt" steht.

Die deutsche Modversion orientiert sich an der deutschen Fanübersetzung "Deutsche Übersetzung für SoD". Dies bedeutet, dass die im Spiel verwendeten Eigennamen und Übersetzungen der Örtlichkeiten etc. mit der Fanübersetzung konsistent sind und zur offiziellen SoD-Übersetzung Diskrepanzen bestehen, vor allem bei den Namen der Spielcharaktere. Installiert die Fanübersetzung für ein konsistentes Spielerlebnis.
Download Link: https://baldurs-gate.de/index.php?resources/deutsche-%C3%9Cbersetzung-f%C3%BCr-sod.49/


INSTALLATION

HINWEIS: Wenn du die Mod bereits installiert hast, entferne sie, bevor du eine neue Version extrahierst. Deinstalliere dazu alle zuvor installierten Komponenten und lösche den Mod-Ordner und die ausführbaren Dateien. 

Schließe bei der Installation oder Deinstallation das DOS-Fenster nicht durch Klicken auf die X-Taste! Drücke stattdessen die Eingabetaste, wenn du dazu aufgefordert wirst.

BG:EE
Wenn du SoD von GOG oder Steam verwendest, musst du dein Spiel mit DLC-Merger oder Modmerge vorbereiten, bevor du Mods installierst:
DLC-Merger von argent77:
https://forums.beamdog.com/discussion/71305/mod-dlc-merger-merge-steam-gog-sod-dlc-or-custom-dlcs-with-the-main-game

modmerge (im Zweifelsfall stattdessen den DLC-Merger verwenden):
https://forums.beamdog.com/discussion/50441/modmerge-merge-your-steam-gog-zip-based-dlc-into-something-weidu-nearinfinity-dltcep-can-use/p1

Allgemein (Windows, Mac OS X, und Linux)

Entpacke den Inhalt des Mod-Archivs in das Hauptverzeichnis deines Spiels. 
HINWEIS: Für die Enhanced-Edition ist es wichtig, dass du die Mod in der Sprachversion installierst, in der du das Spiel spielst. Andernfalls werden die Dialoge der Mods nicht angezeigt, sondern geben Fehlermeldungen aus.

Windows
Nach erfolgreichem Entpacken sollte sich ein sodrtd-Ordner und eine setup-sodrtd.exe-Datei in deinem Spielordner befinden. Zur Installation doppelklicke einfach auf setup-sodrtd.exe und folge den Anweisungen auf dem Bildschirm.
Führe setup-sodrtd.exe in deinem Spielordner aus, um Komponenten neu zu installieren, zu deinstallieren oder anderweitig zu ändern.

Mac OS X
Das Tweak-Pack wird mit WeiDU gepackt und installiert. Um es zu installieren, entpacke das Mod-Archiv und kopiere den Inhalt des Ordners in deinen Spielordner (den Ordner, der die Datei CHITIN.KEY enthält). Wenn das Archiv richtig entpackt wurde, solltest du einen „sodrtd“-Ordner, setup-sodrtd und setup-sodrtd.command in deinem Spielordner haben. Zur Installation doppelklicke einfach auf setup-sodrtd.command und folge den Anweisungen auf dem Bildschirm.

Linux
Entpacke den Inhalt des Mods in den Ordner des Spiels, das du ändern möchtest. Lade die neueste Version von WeiDU für Linux von https://github.com/WeiDUorg/weidu/releases herunter und kopiere WeiDU und WeInstall nach /usr/bin. Öffne anschließend ein Terminal und wechsle in dein BG2-Installationsverzeichnis, führe „tolower“ aus und beantworte beide Fragen mit Y. Du kannst die zweite Option (linux.ini) vermeiden, wenn du sie bereits einmal im selben Verzeichnis ausgeführt hast. Wenn du unsicher bist, ist es am sichersten, tolower auszuführen und beide Optionen zu wählen.
Führe WeInstall sodrtd in deinem Spielordner aus, um die Mod zu installieren. Starte dann wine BGMain.exe und beginne zu spielen. 

HINWEIS: BG(II):EE sind aktiv unterstützte Spiele. Bitte beachte, dass jedes Patch-Update dein aktuelles Mod-Setup löscht! Wenn du dich mitten in einem Spiel mit Mods befindest, solltest du das Patch-Update verschieben, da du selbst nach einer Neuinstallation der Mods möglicherweise nicht mit deinem alten Spielständen weiterspielen kannst. 

Wenn du Probleme bei der Installation hast oder auf Bugs stößt, poste bitte deinen Fehlerbericht in einem der Forumsthreads.


ÜBERSICHT ÜBER NACHVERFOLGTES WISSEN

Die folgenden Ereignisse der Spielgeschichte werden nachverfolgt. Hinweis für Modder: Die Variablen sind auch in "docs/outline_sod_variables.txt" aufgeführt.

HCs Wissen:
------------------------------------------

--Caelar wird verraten? ("C#RtD_CaelarBetrayal"):
0 - HC weiß nicht, dass Caelar von jemandem auf ihrem Kreuzzug verraten wird
1 - HC weiß, dass Caelar von jemandem in ihrem Kreuzzug verraten wird und dass es eine tiefere Ebene für den Zweck des Kreuzzuges gibt, auf die sie keinen Einfluss hat

--Caelar – Kind des Bhaal? ("C#RtD_CaelarBhaalChild"):
0 - HC hat das Gerücht noch nicht gehört
1 - HC hat Gerüchte gehört, dass Caelar ein Kind von Bhaal ist
2 - HC begründet / schließt / spekuliert, dass [Gerüchte, dass Caelar ein Kind von Bhaal ist] nicht wahr sind
3 - Der HC weiß, dass [Gerüchte, dass Caelar ein Kind von Bhaal ist] nicht wahr sind.

--Caelar von den Göttern gesegnet? ("C#RtD_CaelarGodBless"):
0 - HC hat das Gerücht noch nicht gehört
1 - HC hat das Gerücht gehört, dass Caelar göttlich gesegnet ist
2 - HC weiß, dass Caelar behauptet, von „dem Pantheon“ / allen Göttern / mehreren Göttern gesegnet zu sein
3 - HC weiß, dass [Caelar behauptet, von „dem Pantheon“ / allen Göttern / mehreren Göttern gesegnet zu sein] falsch ist

--Caelar versucht, HC zu entführen? ("C#RtD_CaelarKidnap"): 
0 - HC hat noch nicht über schwaches Gift gesprochen
1 - HC hat mit jemandem/NSCs besprochen, dass Caelars Attentäter den HC wahrscheinlich in den Palast entführen wollen (anstatt ihn zu töten)

--Caelars Plan ("C#RtD_CaelarPlan"):
0 - HC weiß noch nichts von Caelars Kreuzzug
1 - HC ist die Existenz des Kreuzzuges bewusst, der durch die Ländereien wütet
2 - HC weiß, dass die Kreuzzügler die Seelen aus dem Drachenspeerkrieg von Avernus befreien wollen
3 - HC weiß, dass die Kreuzzügler planen, in Avernus einzumarschieren
4 - HC weiß, dass die Kreuzzügler vorhaben, in Burg Drachenspeer ein Portal zu öffnen, um nach Avernus zu gelangen
5 - HC vermutet, dass Caelar ihren Onkel Aun Silberweiß aus Avernus retten will.
6 - HC weiß, dass der ganze Zweck des Kreuzzuges nur Aun Silberweiß gilt.

--Caelars Schutz der Kreuzfahrer ("C#RtD_CaelarProtection"):
0 - HC hat das Gerücht noch nicht gehört
1 - HC hat Gerücht über Caelar/göttliche Kräfte durch Caelar gehört, die den Kreuzzug schützen sollen
2 - HC weiß, dass ihre Anhänger glauben, dass die Götter Caelar und sie beschützen
3 - HC hat Hormorns „Segnung“ im Lager der Brückenfeste beobachtet
4 - HC weiß, dass [die Götter Caelar und sie beschützen] eine Lüge ist 

--Caelar will HC ("C#RtD_CaelarWantsHC"): 
1 - HC nimmt an, dass Caelar den HC [lebendig] gefangen nehmen will
2 - HC weiß, dass Caelar Pläne für den HC hat / den HC für [etwas] will

--Ifearnans Verrat ("C#RtD_HephernaanBetrayal"):
0 - HC weiß nicht, dass [ein Mann namens] Ifearnan Caelar betrügt
1 - HC weiß, dass [ein Mann namens] Ifearnan Caelar verrät
2 - HC weiß, dass Ifearnan [der Caelars Berater ist] Caelar verrät.

--Ifearnans echter Meister ("C#RtD_HephernaanFiend"):
0 - HC weiß nicht, dass [ein Mann namens] Ifearnan für einen Teufel arbeitet, um das Portal zu öffnen
1 - HC weiß, dass [ein Mann namens] Ifearnan für einen Teufel arbeitet, um das Portal zu öffnen
2 - HC weiß, dass Ifearnan [der Caelars Berater ist] für einen Teufel arbeitet, um das Portal zu öffnen 
3 - HC weiß, dass Ifearnan [der Caelars Berater ist] für Belhifet arbeitet.

-Wer ist „Ifearnan“? ("C#RtD_HephernaanIdentity"):
0 - HC konnte Gesicht und Namen von Ifearnan noch nicht zuordnen oder hat ihn noch nicht getroffen/gehört
1 - HC kennt Ifearnan mit Namen und Gesicht und weiß, dass er Caelars Berater ist

-HC hat Ifearnans Namen gehört ("C#RtD_HephernaanName"):
0 - HC hat Ifearnans Namen nie gehört
1 - HC hat Ifearnans Namen in Verbindung mit Caelar gehört

-HC sah Ifearnans Gesicht ("C#RtD_HephernaanVisual"):
0 - HC hat das Gesicht von Ifearnan nie gesehen
1 - HC weiß, dass [ein Mann, der aussieht wie] Ifearnan mit der Schattenübereinkunft/einem Teufel zusammenarbeitet

--Auns und Caelars Geschichte ("C#RtD_KnowsAunArgent"):
0 - Keine Kenntnis, dass Caelar einen Onkel namens Aun hatte und etwas passiert ist 
1 - HC weiß, dass Caelar einen Onkel namens Aun hatte und dass etwas passiert ist
2 - HC hat Gerüchte darüber gehört, dass Caelar zur gleichen Zeit, als Aun verschwand, aus dem Orden der Aster entehrt wurde
3 - HC weiß, dass Caelar in Avernus war und zur gleichen Zeit zurückkam, als Aun verschwand
4 - HC weiß, dass Aun für Caelar in Avernus einsprang.

--Motive des vermummten Mannes, den HC zu verfolgen ("C#RtD_KnowsHoodedMan"):
0 - HC weiß nicht, warum der vermummte ihn verfolgt, oder hat den vermummten Mann noch nie getroffen
1 - HC weiß, dass der vermummte Mann den HC wegen seines Bhaal-Erbes verfolgt
2 - HC weiß, dass der vermummte Mann Skie getötet hat

-Portal unter Burg Drachenspeer und wie man es öffnet ("C#RtD_KnowsPortalBlood"):
0 - Keinerlei Wissen über das Portal
1 - HC hat von einem Portal/Spalt in Burg Drachenspeer gehört
2 - HC weiß, dass das Blut eines Bhaal-Kindes notwendig/ausreichend ist, um das Portal nach Avernus unter der Burg zu öffnen
3 - HC schlussfolgert / spekuliert, dass Caelar / Ifearnan das Blut des HC für [Portal nach Avernus öffnen] wollen -- auch für [C#RtD_WantBhaalBlood = 2]
4 - HC weiß, dass Caelar und Ifearnan das Blut des HCs für [Portal nach Avernus öffnen] wollen – auch für [C#RtD_WantBhaalBlood = 3]

--HC hat vermummten Mann getroffen ("C#RtD_MetHoodedMan"):
0 - HC hat den vermummten Mann überhaupt nicht getroffen
1 - HC hat vermummten Mann einmal getroffen
2 - HC hat vermummten Mann mehr als einmal getroffen

--Caelar braucht das Blut des HCs ("C#RtD_WantBhaalBlood"):
0 - HC weiß nicht, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HC [für irgendetwas] will
1 - HC weiß, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HCs [für irgendetwas] wollen
2 - HC begründet / schließt / spekuliert, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HCs für das Öffnen des Portals wollen -- auch für [C#RtD_KnowsPortalBlood = 3]
3 - HC weiß, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HCs wollen, um das Portal zu öffnen – auch für [C#RtD_KnowsPortalBlood = 4]

-Gift des Palastangriffs zu schwach zum Töten ("C#RtD_WeakPoison"):
0 - HC ist sich nicht bewusst, dass das Gift zu schwach zum Töten war
1 - HC weiß, dass das Gift der Palast-Attentäter zu schwach war, um zu töten

Wissen der Herzöge und Bündnisoffiziere:
------------------------------------------

Wird Caelar verraten? ("C#RtD_CoalCaelarBetrayal"):
1 - Herzöge und Offiziere wissen, dass Caelar von jemandem in ihrem Kreuzzug verraten wird, dass es eine tiefere Ebene für den Zweck des Kreuzzuges gibt – HC hat es ihnen gesagt
2 - Herzöge und Offiziere wissen, dass Caelar von jemandem in ihrem Kreuzzug verraten wird, dass es eine tiefere Ebene für den Zweck des Kreuzzuges gibt – haben es woanders gehört 

--Caelar Bhaal-Kind? ("C#RtD_CoalCaelarBhaalChild"):
1 - Herzöge und Offiziere haben Gerüchte gehört, dass Caelar ein Kind von Bhaal ist
2 - Herzöge und Offiziere folgern / schließen / spekulieren, dass [Gerüchte, dass Caelar ein Kind von Bhaal ist] nicht wahr ist – HC hat es ihnen erzählt
3 - Herzöge und Offiziere schließen / vermuten / vermuten, dass [Gerüchte, dass Caelar ein Kind von Bhaal ist] nicht wahr ist – sie haben es woanders gehört
4 - Herzöge und Offiziere wissen, dass [Gerüchte, dass Caelar ein Kind von Bhaal ist] nicht wahr ist – der HC hat es ihnen gesagt
5 - Herzöge und Offiziere wissen, dass [Gerüchte, dass Caelar ein Kind von Bhaal ist] nicht wahr ist – sie haben es woanders gehört

--Caelar von den Göttern gesegnet? ("C#RtD_CoalCaelarGodBless"):
1 - Herzöge und Offiziere kennen das Gerücht, dass Caelar göttlich gesegnet ist
2 - Herzöge und Offiziere wissen, dass Caelar behauptet, von „dem Pantheon“ / allen Göttern / mehreren Göttern gesegnet zu sein – HC hat es ihnen erzählt
3 - Herzöge und Offiziere wissen, dass Caelar behauptet, von „dem Pantheon“ / allen Göttern / mehreren Göttern gesegnet zu sein – sie haben es woanders gehört
4 - Herzöge und Offiziere wissen, dass [Caelar behauptet, von „dem Pantheon“ / allen Göttern / mehreren Göttern gesegnet zu sein] falsch ist – der HC hat es ihnen gesagt
5 - Herzöge und Offiziere wissen, dass [Caelar behauptet, von „dem Pantheon“ / allen Göttern / mehreren Göttern gesegnet zu sein] falsch ist – haben es woanders gehört

--Caelar versucht, HC zu entführen? ("C#RtD_CoalCaelarKidnap"):
1 - HC erzählte den Herzögen und Offizieren von der Idee der Entführung im Palast (statt der Tötung)
2 - Herzöge und Offiziere haben es woanders gehört/ selbst geschlussfolgert (z. B. nachdem sie gehört haben, dass Bhaal-Blut benötigt wird, um das Portal zu öffnen oder nachdem "CaelarWantsHC" "1" ist)

--Caelars Plan ("C#RtD_CoalCaelarPlan"):
1 - Herzöge und Offiziere sind sich über die Existenz des Kreuzzuges, der in den Ländern wütet, bewusst 
2 - Herzöge und Offiziere wissen, dass die Kreuzzügler Seelen aus dem Drachenspeerkrieg von Avernus befreien wollen – HC hat es ihnen gesagt
3 - Herzöge und Offiziere wissen, dass die Kreuzzügler Seelen aus dem Drachenspeerkrieg von Avernus befreien wollen – sie haben es woanders gehört
4 - Herzöge und Offiziere wissen, dass die Kreuzzügler planen, nach Avernus zu marschieren – HC hat es ihnen erzählt
5 - Herzöge und Offiziere wissen, dass die Kreuzzügler planen, nach Avernus zu marschieren – haben es woanders gehört
6 - Herzöge und Offiziere wissen, dass die Kreuzzügler planen, ein Portal in Burg Drachenspeer zu öffnen, um nach Avernus zu gelangen – der HC hat es ihnen gesagt
7 - Die Herzöge und Offiziere wissen, dass die Kreuzzügler planen, ein Portal in Burg Drachenspeer zu öffnen, um nach Avernus zu gelangen – sie haben es woanders gehört
8 - Herzöge und Offiziere spekulieren, dass Caelar ihren Onkel Aun Silberweiß aus Avernus retten will – der HC hat es ihnen erzählt
9 - Herzöge und Offiziere spekulieren, dass Caelar ihren Onkel Aun Silberweiß aus Avernus retten will – haben es woanders gehört
10 - Herzöge und Offiziere wissen, dass der ganze Zweck des Kreuzzuges Aun Silberweiß gilt – der HC hat es ihnen erzählt
11 - Herzöge und Offiziere wissen, dass der ganze Zweck des Kreuzzuges Aun Silberweiß gilt – sie haben es woanders gehört

--Caelars Schutz der Kreuzzügler ("C#RtD_CoalCaelarProtection"):
1 - Herzöge und Offiziere haben das Gerücht gehört, dass Caelar den Kreuzzug beschützt
2 - Herzöge und Offiziere wissen, dass Caelars Anhänger glauben, dass die Götter Caelar und sie beschützen – HC hat es ihnen erzählt
3 - Herzöge und Offiziere wissen, dass Caelars Anhänger glauben, dass die Götter Caelar und sie beschützen – sie haben es woanders gehört
4 - Herzöge und Offiziere wissen von Hormorns "Segen" im Lager von Bridgefort – der HC hat es ihnen erzählt 
5 - Herzöge und Offiziere wissen, dass „Caelar-Schutz“ eine Lüge ist – der HC hat es ihnen erzählt
6 - Herzöge und Offiziere wissen, dass „Caelar-Schutz“ eine Lüge ist – sie haben es woanders gehört

--Caelar will HC ("C#RtD_CoalCaelarWantsPC"):
1 - Herzöge und Offiziere nehmen an, dass Caelar den HC [lebendig] gefangen nehmen will – HC hat es ihnen gesagt
2 - Herzöge und Offiziere nehmen an, dass Caelar den HC [lebendig] gefangen nehmen will – sie haben es woanders gehört
3 - Herzöge und Offiziere wissen, dass Caelar Pläne für den HC hat / den HC für [etwas] braucht – HC hat es ihnen erzählt
4 - Herzöge und Offiziere wissen, dass Caelar Pläne für den HC hat / den HC für [etwas] haben will – haben es woanders gehört

--Ifearnans Verrat ("C#RtD_CoalHephernaanBetrayal"):
1 - Herzöge und Offiziere wissen, dass Ifearnan [der Caelars Berater ist] Caelar betrügt – HC hat es ihnen erzählt
2 - Herzöge und Offiziere wissen, dass Ifearnan [der Caelars Berater ist] Caelar verrät – sie haben es woanders gehört

-Ifearnans echter Meister ("C#RtD_CoalHephernaanFiend"):
1 - Herzöge und Offiziere wissen, dass Ifearnan [der Caelars Brater ist] für einen Teufel arbeitet, um das Portal zu öffnen – HC hat es ihnen gesagt
2 - Herzöge und Offiziere wissen, dass Ifearnan [der Caelars Brater ist] für einen Teufel arbeitet, um das Portal zu öffnen – haben es woanders gehört 
3 - Herzöge und Offiziere wissen, dass Ifearnan [der Caelars Brater ist] für Belhifet arbeitet – der HC hat es ihnen gesagt
4 - Herzöge und Offiziere wissen, dass Ifearnan [der Caelars Brater ist] für Belhifet arbeitet – sie haben es woanders gehört 

-Wer ist „Ifearnan“? ("C#RtD_CoalHephernaanIdentity"):
1 - Herzöge und Offiziere kennen Ifearnan mit Namen und Gesicht und wissen, dass er Caelars Berater ist – habe es an anderer Stelle gehört

-Auns und Caelars Geschichte ("C#RtD_CoalKnowsAunArgent"):
1 - Herzöge und Offiziere hörten Gerüchte über die Entlassung Caelars aus dem Orden der Aster zur gleichen Zeit, als Aun verschwand – HC erzählte es ihnen
2 - Herzöge und Offiziere haben Gerüchte gehört, dass Caelar zur gleichen Zeit, als Aun verschwand, beim Orden der Aster in Ungnade gefallen ist – sie haben es woanders gehört 
3 - Herzöge und Offiziere wissen, dass Caelar in Avernus war und zur gleichen Zeit zurückkam, als Aun verschwand – der HC hat es ihnen erzählt
4 - Herzöge und Offiziere wissen, dass Caelar in Avernus war und zur gleichen Zeit zurückkam, als Aun verschwand – sie haben es woanders gehört
5 - Herzöge und Offiziere wissen, dass Aun für Caelar in Avernus den Platz als Gefangener eingenommen hat – der HC hat es ihnen erzählt
6 - Herzöge und Offiziere wissen, dass Aun für Caelar in Avernus den Platz als Gefangener eingenommen hat – sie haben es woanders gehört

--Motive des vermummten Mannes, den HC zu verfolgen ("C#RtD_CoalKnowsHoodedMan"):
1 - Herzöge und Offiziere wissen, dass der vermummte Mann den HC wegen seines Bhaal-Erbes verfolgt – der HC hat es ihnen erzählt
2 - Herzöge und Offiziere wissen, dass der vermummte Mann den HC wegen seines Bhaal-Erbes verfolgt – sie haben es woanders gehört
3 - Herzöge und Offiziere wissen, dass der vermummte Mann Skie getötet hat – der HC hat es ihnen erzählt
4 - Die Herzöge und Offiziere wissen, dass der vermummte Mann Skie getötet hat – sie haben es woanders gehört

-Portal unter Burg Drachenspeer und wie man es öffnet ("C#RtD_CoalKnowsPortalBlood"):
1 - Herzöge und Offiziere hörten von einem Portal/Höllenspalt in der Burg Drachenspeer – HC erzählte es ihnen
2 - Herzöge und Offiziere haben von einem Portal/Höllenspalt in der Burg Dragonspear gehört – sie haben es woanders gehört 
3 - Herzöge und Offiziere wissen, dass das Blut eines Bhaal-Kindes benötigt wird/ausreicht, um das Portal nach Avernus unter der Burg zu öffnen – der HC hat es ihnen erzählt
4 - Herzöge und Offiziere wissen, dass das Blut eines Bhaal-Kindes notwendig/ausreichend ist, um das Portal nach Avernus unter der Burg zu öffnen – sie haben es woanders gehört 
5 - Herzöge und Offiziere schlussfolgern / spekulieren, dass Caelar / Ifearnan das Blut des HCs wollen, um [das Portal nach Avernus zu öffnen] – der HC hat es ihnen gesagt -- auch für [C#RtD_CoalWantBhaalBlood = 3]
6 - Herzöge und Offiziere schlussfolgern / vermuten / spekulieren, dass Caelar / Ifearnan das Blut des HCs für [Portal nach Avernus öffnen] wollen – sie haben es anderswo gehört -- auch für [C#RtD_CoalWantBhaalBlood = 4]
7 - Herzöge und Offiziere wissen, dass Caelar / Ifearnan das Blut des HCs für [Portal nach Avernus öffnen] wollen – HC hat es ihnen erzählt -- auch für [C#RtD_CoalWantBhaalBlood = 5]
8 - Herzöge und Offiziere wissen, dass Caelar / Ifearnan das Blut des HCs für [Portal nach Avernus öffnen] wollen – haben es anderswo gehört – auch für [C#RtD_CoalWantBhaalBlood = 6]

--HC traf den vermummten Mann ("C#RtD_CoalMetHoodedMan"):
1 - Herzöge und Offiziere wissen, dass HC den vermummten Mann getroffen hat – HC hat es ihnen erzählt
2 - Herzöge und Offiziere wissen, dass HC den vermummten Mann getroffen hat – sie haben es woanders gehört
3 - Herzöge und Offiziere wissen, dass der HC den vermummten Mann mehr als einmal getroffen hat – der HC hat es ihnen erzählt
4 - Herzöge und Offiziere wissen, dass der HC den vermummten Mann mehr als einmal getroffen hat – haben es woanders gehört

--Caelar braucht HCs Blut ("C#RtD_CoalWantBhaalBlood"):
1 - Herzöge und Offiziere wissen, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HCs wollen – der HC hat es ihnen gesagt
2 - Herzöge und Offiziere wissen, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HCs wollen – sie haben es woanders gehört 
3 - Herzöge und Offiziere schlussfolgern / vermuten / spekulieren, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HCs wollen, um das Portal zu öffnen – der HC hat es ihnen gesagt -- auch wegen [C#RtD_CoalKnowsPortalBlood = 5]
4 - Herzöge und Offiziere schlussfolgern / vermuten / spekulieren, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HCs wollen, um das Portal zu öffnen – sie haben es an anderer Stelle gehört – auch für [C#RtD_CoalKnowsPortalBlood = 6]
5 - Herzöge und Offiziere wissen, dass Caelar / Ifearnan das Blut des Bhaal-Kindes des HCs wollen, um das Portal zu öffnen – HC hat es ihnen gesagt – auch für [C#RtD_CoalKnowsPortalBlood = 7]
6 - Herzöge und Offiziere wissen, dass Caelar / Ifearnan das Bhaal-Kinderblut des HCs für das Öffnen des Portals wollen – haben es woanders gehört -- auch für [C#RtD_CoalKnowsPortalBlood = 8] 

--Gift des Palastangriffs zu schwach zum Töten ("C#RtD_CoalWeakPoison"):
1 - Herzöge und Offiziere wissen, dass das Gift zu schwach war, um zu töten – haben es anderswo gehört


VARIABLENSYSTEM: ALLGEMEINE BESCHREIBUNG FÜR MODDER

Anmerkung: „C#“ ist mein persönliches Präfix. Die Tracking-Variablen sollten so verwendet werden, wie sie in „Road to Discovery“ benannt sind. Aber für eigene Mod-Projekte verwendest du dein eigenes Präfix. Wenn du noch kein persönliches Präfix hast, registriere eines für dich (Link unten).

Beim ersten Aufruf des Evaluationsskriptes wird die Variable Global("C#RtD_RoadToDiscovery","GLOBAL",1) gesetzt, damit andere Mods die Variablen für das Tracking-System prüfen können.

Für das VERFOLGEN des Wissens, das der HC und die Bündnistruppen über das Spielgeschehen haben, verwende die Variablen OHNE Postfix „_SET“ in deiner Mod.

Für das EINSPEISEN von Variablen aus deiner Mod, sofern deine Mod neue Möglichkeiten bietet, etwas über die Spielereignisse zu erfahren, setze die Variablen MIT dem Postfix „_SET“ in deiner Mod. Setze die Variablen nicht ohne das Postfix „_SET“ in deiner Mod, da dies das gesamte Variablen- und Journal-System durcheinander bringen könnte.
Für jede Instanz muss auch die globale Variable, die das Auswertungsskript „C#RtD_VariableEvaluation“ auslöst, auf „1“ gesetzt werden. 
Beispiel:
In Dynaheirs Gesprächsdialog sagt sie eine Zeile darüber, dass sie das Gerücht gehört hat, Caelar sei ein Kind von Bhaal (bddynahe, state 20): „Ich habe von dieser Frau gehört. Manche glauben, sie sei die Tochter eines Gottes, vielleicht sogar ein Kind Bhaals … Das ist eine eingehendere Untersuchung wert, und das ist auch der Grund, warum ich noch in dieser Region verweile. Wann wollt Ihr aufbrechen?". 
Wir wollen, dass die Variable "C#RtD_CaelarBhaalChild" auf "1" ausgewertet wird, wenn der HC noch nichts davon erfahren hat. Also fügen wir die Aktion hinzu:
DO ~SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",1)
SetGlobal("C#RtD_VariableAuswertung","GLOBAL",1)~.
Die Variable Global("C#RtD_VariableAuswertung","GLOBAL",1) löst das Auswertungsskript aus (über bdbaldur.bcs). Die Variable Global("C#RtD_CaelarBhaalChild_SET","GLOBAL",1) wird dann überprüft, und die Gesamtverfolgungsvariable "C#RtD_CaelarBhaalChild" wird auf 1 gesetzt, wenn sie noch auf 0 war.
Die Verwendung der Variablen mit dem Postfix „_SET“ stellt sicher, dass das Wissen nicht verloren geht: Wenn in unserem Beispiel die Variable bereits auf „2“ stehen würde, d. h. der HC weiß bereits, dass Calear kein Kind von Bhaal ist, dann sollte dieser Dialog mit Dynaheir die übergeordnete Tracking-Variable nicht auf „1“ zurücksetzen. Daher arbeiten wir mit zwei Variablensätzen – einem mit dem Postfix zusammen mit dem Auslöser des Auswertungsskripts und einem ohne Postfix, der nur innerhalb des Auswertungsskripts ausgewertet wird –, um sicherzustellen, dass keine Informationen in einen weniger informierten Zustand zurückgesetzt werden.


DANKSAGUNGEN

jastey - Autor, Hauptverantwortliche für die Mod
JohnBob - französische Übersetzung (v0.5 Beta)
Lauriel - Autor von Komponente 1, Ideen, Designhilfe, Korrekturleser (v0.1 Beta)
Machiavélique - Korrekturleser (französisch, v0.4 Beta)
Shai Hulud - deutsche Übersetzung (v0.2 Beta)

Danke an BioWare, Black Isle und Wizards of the Coast für Baldur's Gate 1, 2 und die Infinity-Engine, und BeamDog für die Wiederbelebung der Spiele einschließlich der SoD-Kampagne.
Danke an das Kerzenburgforum und GibberlingsThree für die Bereitstellung eines Ortes für den Austausch von Ideen und technischen Ratschlägen.
Danke an alle Modder, die die IE-Modding-Tools entwickelt haben und pflegen, ohne die diese Mod nicht möglich gewesen wäre.
Danke an alle, die diese Mod oder eine meiner Mods spielen, und auch an diejenigen, die mir Feedback geben, um meine Mods zu verbessern. Ohne euch würde das Modding nicht so viel Spaß machen.
Das meine ich ganz ernst, obwohl ich diese Textbausteine auch in anderen Mods verwende! :-)


VERWENDETE TOOLS UND RESSOURCEN

Die SoD-Road-to-Discovery-Mod wurde unter Verwendung der vom IESDP (https://gibberlings3.github.io/iesdp/index.htm) zur Verfügung gestellten Ressourcen und mit folgender Software erstellt:

Near Infinity https://github.com/Argent77/NearInfinity/releases/latest
WeiDU http://www.weidu.org
grepWin http://tools.stefankueng.com/grepWin.html
Notepad++ https://notepad-plus-plus.org/downloads/

Weitere Links, Modding-Communities, Tutorials, technische Hilfestellungen, Walkthroughs, die bei der Erstellung dieser Mod verwendet wurden:

Kerzenburgforum				https://www.baldurs-gate.de/index.php
The Gibberlings Three			http://gibberlings3.net
Pocket Plane Group			http://pocketplane.net
Spellhold Studios			http://www.shsforums.net/

Lauriel's Themed Tweak Mod
https://github.com/lzenner/themed_tweaks/releases

Jastey's SoD Tweak Mod
https://www.gibberlings3.net/mods/tweaks/jasteys-sod-tweak-pack/

jastey's SoD NHC Modding Tutorials:
https://www.gibberlings3.net/forums/topic/30139-jasteys-sod-nHC-modding-tutorials/

SoD Walkthrough at GameBanshee http://www.gamebanshee.com/baldursgate/walkthrough/sod-korlaszstomb.php

Filename Prefix Reservation List
https://www.gibberlings3.net/forums/topic/1649-community-filename-prefix-reservations/


ÄNDERUNGSHISTORIE

Version 0.5 Beta
- Fixed installation problems if "Add Stat-Based Observations and Quest Options" component was installed via Themed Tweaks mod.
- Component 1 "Add Stat-Based Observations and Quest Options from Lauriel's Themed Tweaks Mod" updated to changes v0.2: Wrong variable references fixed; Reply option about Hooded Man inside the palace will only show if the Hooded Man was inide the palace; Added WEIGHT #-1 to Edwin's dialogue so it won't get blocked; cutscene changed to make texts better readable; setting of variable for generic NPC dialogues will not loop; Corrected string reference error for BG:SoD.
- Corrected oversights in scripts and dialogues: wrong variable values, missing setting of variables, missing interconnections in scripts.
- Scripting generally improved for compatibility.
- assumptions and speculations will no longer be triggered by script but will offered as reply options with the officers.
- Component "Add Additional Communication with Officers": Sir Deggernaut can be asked to list all new and already known facts separately.
- Silenced ingame debug notifications about variables evaluation.
- Corrcted remnants to other mod names in readme.

Version 0.4 Beta
- added French version by JohnBob, proofreading by Machiavélique

Version 0.3 Beta
- new reply option of Jastey's SoD Tweakpack (v6) will be tagged accordingly.
- restructured tp2 so dependent components will be deinstalled automatically if main component is deinstalled.

Version 0.2 Beta
- German version added, by Shai Hulud
- added a paragraph "note to all translators and German players" to readme
- removed the tra handling: no copying to "autotra" folder; no iconv convertion; tra-files are in utf8.

Version 0.1 Beta
- Erste öffentliche Veröffentlichung


COPYRIGHT-HINWEIS

Diese Mod wurde erstellt, um von allen Baldur's-Gate-II-Spielern frei genutzt werden zu können, und ihr Inhalt ist frei von Rechten. Er darf jedoch nicht ohne die Zustimmung der Autoren verkauft, veröffentlicht, zusammengestellt oder in irgendeiner Form weitergegeben werden.
Bitte beachten Sie, dass jegliche Weiterverbreitung und/oder das Hosten dieser Mod ohne Erlaubnis der Autoren verboten ist.
Die Modding-Community für die Infinity-Engine besteht nun schon seit mehr als 10 Jahren und ist der Höhepunkt tausender unbezahlter Modding-Stunden von anderen Fans des Spiels. Die Modder liefern ihre beste Arbeit ab, und die Spieler erhalten die besten, gut unterstützten Mods, wenn wir alle zusammenarbeiten.
Es gibt zwei große Möglichkeiten, diese Harmonie zu stören. Die eine ist, die Arbeit eines anderen als die eigene auszugebenen. Die zweite ist, eine Mod ohne die Erlaubnis des Autors/der Autoren zu hosten und weiterzuverbreiten.
Seien Sie nett zu Ihren Mitspielern und Moddern. Tun Sie beides nicht.

================================================================================
Die Road-to-Discovery-Mod für SoD ist inoffizieller Fan-Content, der gemäß der Fan-Content-Policy erlaubt ist. Nicht von Wizards genehmigt/befürwortet. Teile des verwendeten Materials sind Eigentum von Wizards of the Coast. ©Wizards of the Coast LLC.
Diese Mod wird auch nicht von BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games oder Beamdog entwickelt, unterstützt oder zugelassen. Alle anderen Marken und Copyrights sind Eigentum der jeweiligen Besitzer.
================================================================================