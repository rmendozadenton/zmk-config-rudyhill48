<map version="0.9.0">

<node COLOR="#000000">
<font NAME="SansSerif" SIZE="20"/>
<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
/*
</p>
<ul class="org-ul">
<li>Copyright (c) 2022 The ZMK Contributors</li>
<li></li>

<li>SPDX-License-Identifier: MIT</li>
</ul>
<p>
*/
</p>

<p>
#include &lt;behaviors.dtsi&gt;
#include &lt;dt-bindings/zmk/bt.h&gt;
#include &lt;dt-bindings/zmk/ext<sub>power.h</sub>&gt;
#include &lt;dt-bindings/zmk/keys.h&gt;
#include &lt;dt-bindings/zmk/outputs.h&gt;
#include &lt;dt-bindings/zmk/rgb.h&gt;
</p>

<p>
#define QWERTY<sub>L</sub> 0
#define DVORAK<sub>L</sub> 1
#define COLEMK<sub>L</sub> 2
#define SYM<sub>L</sub>    3
#define NUM<sub>L</sub>    4
#define ADJ<sub>L</sub>    5
</p>

<p>
#define Undo   LC(Z)
#define Cut    LC(X)
#define Copy   LC(C)
#define Paste  LC(V)
</p>


<p>
&amp;mt {
    flavor = "tap-preferred";
    tapping<sub>term</sub><sub>ms</sub> = &lt;200&gt;;
};
</p>

<p>
/ {
        keymap {
                compatible = "zmk,keymap";
</p>

<p>
                default<sub>layer</sub> {
/* QWERTY
</p>
<ul class="org-ul">
<li>-------------------------------------------------------------------------------------------------------------------------------------&#x2013;&#x2014;</li>
<li>| `     |       |   W    |   E     |   R   |   T   |------------------------------&#x2013;&#x2014;|   Y   |   U   |   I     |   O   | ESC   | ESC   |</li>
<li>| TAB   |   A   |   S    |   D     | SYM F | ESC G |------------------------------&#x2013;&#x2014;|   H   | SYM J |   K     |   L   |   ;   | ENTER |</li>
<li>| Q     | SHIFT  Z   | LALT X | LCTRL C | GUI V |   B   | Num   |--------------&#x2013;&#x2014;|  Sym  |   N   | GUI M | LCTRL , |LALT . |   /   | P     |</li>
<li>-----------&#x2013;&#x2014;| CTRL  |-----&#x2013;&#x2014;|  SYM  |  ALT  | ESC ENTER | SYM SPACE  |&#x2014;| SHIFT| BSPC |  ALT  |  NUM  |----&#x2013;&#x2014;|   '   |-----------&#x2013;&#x2014;</li>
</ul>
<p>
 */
                        bindings = &lt;
&amp;kp  GRAVE    &amp;none         &amp;kp  W        &amp;kp  E        &amp;kp  R        &amp;kp  T                                                                         &amp;kp  Y        &amp;kp U        &amp;kp  I            &amp;kp  O         &amp;kp  ESC      &amp;kp  ESC
&amp;kp  TAB      &amp;kp  A        &amp;kp  S        &amp;kp  D        &amp;lt SYM<sub>L</sub> F   &amp;lt ESC  G                                                                     &amp;kp  H        &amp;lt SYM<sub>L</sub> J  &amp;kp  K            &amp;kp  L         &amp;kp  SEMI     &amp;kp  ENTER  
&amp;kp  Q        &amp;lt LSHIFT  Z        &amp;mt LALT  X   &amp;mt  LCTRL C  &amp;mt LGUI  V   &amp;kp  B        &amp;mo  NUM<sub>L</sub>                                         &amp;mo  SYM<sub>L</sub>    &amp;kp  N        &amp;mt RGUI M   &amp;mt LCTRL  COMMA  &amp;mt  RALT DOT  &amp;kp  SLASH    &amp;kp  P
                            &amp;kp  LCTRL                  &amp;mo SYM<sub>L</sub>     &amp;kp  LALT     &amp;lt  ESC ENTER    &amp;lt SYM<sub>L</sub>  SPACE   &amp;kp  RSHFT    &amp;kp  BSPC     &amp;kp  LALT     &amp;mo NUM<sub>L</sub>                      &amp;kp  SQT   
                        &gt;;
</p>

<p>
        sensor-bindings = &lt;&amp;inc<sub>dec</sub><sub>kp</sub> C<sub>VOL</sub><sub>UP</sub> C<sub>VOL</sub><sub>DN</sub> &amp;inc<sub>dec</sub><sub>kp</sub> PG<sub>UP</sub> PG<sub>DN</sub>&gt;;
};
</p>

<p>
                dvorak<sub>layer</sub> {
/* DVORAK
</p>
<ul class="org-ul">
<li>--------------------------------------------------------------------------------------------------------------------------------&#x2013;&#x2014;</li>
<li>| `     |   '   |   ,   |   .   |   P   |   Y   |------------------------------&#x2013;&#x2014;|   F   |   G   |   C   |   R   |   L   | BKSPC |</li>
<li>| TAB   |   A   |   O   |   E   |   U   |   I   |------------------------------&#x2013;&#x2014;|   D   |   H   |   T   |   N   |   S   | ENTER |</li>
<li>| SHIFT |   ;   |   Q   |   J   |   K   |   X   | CAPS  |--------------&#x2013;&#x2014;|  ESC  |   B   |   M   |   W   |   V   |   Z   | SHIFT |</li>
<li>-----------&#x2013;&#x2014;| CTRL  |--&#x2013;&#x2014;|  GUI  |  ALT  | SPACE |  Sym  |&#x2014;|  Num  | SPACE |  ALT  |  GUI  |--&#x2013;&#x2014;|   /   |-----------&#x2013;&#x2014;</li>
</ul>
<p>
 */
                        bindings = &lt;
&amp;kp  GRAVE    &amp;kp  SQT      &amp;kp  COMMA    &amp;kp  DOT      &amp;kp  P        &amp;kp  Y                                                                         &amp;kp  F        &amp;kp  G        &amp;kp  C        &amp;kp  R        &amp;kp  L        &amp;kp  BSPC
&amp;kp  TAB      &amp;kp  A        &amp;kp  O        &amp;kp  E        &amp;kp  U        &amp;kp  I                                                                         &amp;kp  D        &amp;kp  H        &amp;kp  T        &amp;kp  N        &amp;kp  S        &amp;kp  ENTER
&amp;kp  LSHFT    &amp;kp  SEMI     &amp;kp  Q        &amp;kp  J        &amp;kp  K        &amp;kp  X        &amp;kp  CAPS                                          &amp;kp   ESC     &amp;kp  B        &amp;kp  M        &amp;kp  W        &amp;kp  V        &amp;kp  Z        &amp;kp  RSHFT
                            &amp;kp  LCTRL                  &amp;kp  LGUI     &amp;kp  LALT     &amp;kp  SPACE    &amp;mo  SYM<sub>L</sub>             &amp;mo  NUM<sub>L</sub>    &amp;kp  SPACE    &amp;kp  LALT     &amp;kp  RGUI                   &amp;kp  SLASH
                        &gt;;
</p>

<p>
        sensor-bindings = &lt;&amp;inc<sub>dec</sub><sub>kp</sub> C<sub>VOL</sub><sub>UP</sub> C<sub>VOL</sub><sub>DN</sub> &amp;inc<sub>dec</sub><sub>kp</sub> PG<sub>UP</sub> PG<sub>DN</sub>&gt;;
};
</p>

<p>
                colemak<sub>layer</sub> {
/* COLEMAK-DH
</p>
<ul class="org-ul">
<li>--------------------------------------------------------------------------------------------------------------------------------&#x2013;&#x2014;</li>
<li>| `     |   Q   |   W   |   F   |   P   |   B   |------------------------------&#x2013;&#x2014;|   J   |   L   |   U   |   Y   |   ;   | BKSPC |</li>
<li>| TAB   |   A   |   R   |   S   |   T   |   G   |------------------------------&#x2013;&#x2014;|   M   |   N   |   E   |   I   |   O   | ENTER |</li>
<li>| SHIFT |   Z   |   X   |   C   |   D   |   V   | CAPS  |--------------&#x2013;&#x2014;|  ESC  |   K   |   H   |   ,   |   .   |   /   | SHIFT |</li>
<li>-----------&#x2013;&#x2014;| CTRL  |--&#x2013;&#x2014;|  GUI  |  ALT  | SPACE |  Sym  |&#x2014;|  Num  | SPACE |  ALT  |  GUI  |--&#x2013;&#x2014;|   '   |-----------&#x2013;&#x2014;</li>
</ul>
<p>
 */
                        bindings = &lt;
&amp;kp  GRAVE    &amp;kp  Q        &amp;kp  W        &amp;kp  F        &amp;kp  P        &amp;kp  B                                                                         &amp;kp  J        &amp;kp  L        &amp;kp  U        &amp;kp  Y        &amp;kp  SEMI     &amp;kp  BSPC
&amp;kp  TAB      &amp;kp  A        &amp;kp  R        &amp;kp  S        &amp;kp  T        &amp;kp  G                                                                         &amp;kp  M        &amp;kp  N        &amp;kp  E        &amp;kp  I        &amp;kp  O        &amp;kp  ENTER
&amp;kp  LSHFT    &amp;kp  Z        &amp;kp  X        &amp;kp  C        &amp;kp  D        &amp;kp  V        &amp;kp  CAPS                                          &amp;kp   ESC     &amp;kp  K        &amp;kp  H        &amp;kp  COMMA    &amp;kp  DOT      &amp;kp  SLASH    &amp;kp  RSHFT
                            &amp;kp  LCTRL                  &amp;kp  LGUI     &amp;kp  LALT     &amp;kp  SPACE    &amp;mo  SYM<sub>L</sub>             &amp;mo  NUM<sub>L</sub>    &amp;kp  SPACE    &amp;kp  LALT     &amp;kp  RGUI                   &amp;kp  SQT   
                        &gt;;
</p>

<p>
        sensor-bindings = &lt;&amp;inc<sub>dec</sub><sub>kp</sub> C<sub>VOL</sub><sub>UP</sub> C<sub>VOL</sub><sub>DN</sub> &amp;inc<sub>dec</sub><sub>kp</sub> PG<sub>UP</sub> PG<sub>DN</sub>&gt;;
};
</p>

<p>
/* ORIG SYM
</p>
<ul class="org-ul">
<li>--------------------------------------------------------------------------------------------------------------------------------&#x2013;&#x2014;</li>
<li>| HOME  |   !   |   @   |   #   |   $   |   %   |------------------------------&#x2013;&#x2014;|   ^   |   &amp;   |   *   |   (   |   )   | BSPC  |</li>
<li>| END   |  GUI  |  ALT  | CTRL  | Shift | Pg Up |------------------------------&#x2013;&#x2014;|   -   |   =   |   [   |   ]   |   \   | ENTER |</li>
<li>| Shift |  UnDo |  Cut  | Copy  | Paste | Pg Dn |OsAltGr|--------------&#x2013;&#x2014;| ADJ<sub>L</sub> |   _   |   +   |   {   |   }   |   |   | SHIFT |</li>
<li>-----------&#x2013;&#x2014;|       |--&#x2013;&#x2014;|       |       |       |       |&#x2014;| MENU |       |       |       |--&#x2013;&#x2014;| CTRL  |-----------&#x2013;&#x2014;
bindings = &lt;</li>
</ul>
<p>
&amp;kp  HOME     &amp;kp  EXCL     &amp;kp  AT       &amp;kp  HASH     &amp;kp  DOLLAR   &amp;kp  PERCENT                                                                   &amp;kp  CARET    &amp;kp  AMPS     &amp;kp  ASTRK    &amp;kp  LPAR     &amp;kp  RPAR     &amp;trans
&amp;kp  END      &amp;kp  LGUI     &amp;kp  LALT     &amp;kp  LCTRL    &amp;kp  LSHFT    &amp;kp  PG<sub>UP</sub>                                                                     &amp;kp  MINUS    &amp;kp  EQUAL    &amp;kp  LBKT     &amp;kp  RBKT     &amp;kp  BSLH     &amp;trans
&amp;trans        &amp;kp  Undo     &amp;kp  Cut      &amp;kp  Copy     &amp;kp  Paste    &amp;kp  PG<sub>DN</sub>    &amp;trans                                              &amp;mo ADJ<sub>L</sub>    &amp;kp  UNDER    &amp;kp  PLUS     &amp;kp  LBRC     &amp;kp  RBRC     &amp;kp  PIPE     &amp;trans
                            &amp;trans                      &amp;trans        &amp;trans        &amp;trans        &amp;trans                 &amp;kp K<sub>APP</sub>      &amp;trans        &amp;trans        &amp;trans                      &amp;kp  RCTRL    
                        &gt;;
</p>

<p>
                       sensor-bindings = &lt;&amp;inc<sub>dec</sub><sub>kp</sub> PG<sub>UP</sub> PG<sub>DN</sub> &amp;inc<sub>dec</sub><sub>kp</sub> C<sub>VOL</sub><sub>UP</sub> C<sub>VOL</sub><sub>DN</sub>&gt;;
               };
*/
</p>

<p>
                sym<sub>layer</sub> {
/* SYM
</p>
<ul class="org-ul">
<li>--------------------------------------------------------------------------------------------------------------------------------------------&#x2013;&#x2014;</li>
<li>| HOME  |    `    |   7   |   8   |   9  |   *   |----------------------------------&#x2013;&#x2014;|   $    |    {    |    }    |    #    |   LT  |  GT   |</li>
<li>| END   |    !    |   1   |   2   |   3  |   +   |----------------------------------&#x2013;&#x2014;|   -    |    [    |    ]    |    '    |   |   | ALTAB |</li>
<li>| INS   |    ~    |   4   |   5   |   6  |   =   | TRANS |----------------&#x2013;&#x2014;| ADJ<sub>L</sub>   |   _    |    (    |    )    |    @    |   %   | TRANS |</li>
<li>-------------&#x2013;&#x2014;|     |--&#x2013;&#x2014;|        |   .   |   0    |  TRANS   |&#x2014;| MENU | TRANS  |  TRANS | TRANS |---&#x2013;&#x2014;| CTRL  |----------------&#x2013;&#x2014;</li>
</ul>
<p>
 */
                        bindings = &lt;
&amp;kp HOME  &amp;kp GRAVE &amp;kp N7  &amp;kp N8   &amp;kp N9  &amp;kp ASTRK                                      &amp;kp DLLR   &amp;kp LBRC &amp;kp RBRC  &amp;kp HASH &amp;kp LT     &amp;kp GT
&amp;kp END   &amp;kp EXCL  &amp;kp N1  &amp;kp N2   &amp;kp N3  &amp;kp PLUS                                       &amp;kp MINUS  &amp;kp LPAR &amp;kp RPAR  &amp;kp SQT  &amp;kp PIPE   &amp;kp LA(TAB)
&amp;kp INS   &amp;kp CARET &amp;kp N4  &amp;kp N5   &amp;kp N6  &amp;kp EQUAL  &amp;trans                   &amp;mo ADJ<sub>L</sub>  &amp;kp UNDER  &amp;kp LBKT &amp;kp RBKT  &amp;kp AT   &amp;kp PRCNT  &amp;trans
                    &amp;trans       &amp;trans          &amp;kp DOT  &amp;kp N0  &amp;trans       &amp;kp K<sub>APP</sub>  &amp;trans   &amp;trans        &amp;trans                  &amp;kp  RCTRL    
                        &gt;;
</p>

<p>
                        sensor-bindings = &lt;&amp;inc<sub>dec</sub><sub>kp</sub> PG<sub>UP</sub> PG<sub>DN</sub> &amp;inc<sub>dec</sub><sub>kp</sub> C<sub>VOL</sub><sub>UP</sub> C<sub>VOL</sub><sub>DN</sub>&gt;;
                };
PG<sub>DN</sub>
PG<sub>UP</sub> 
                num<sub>layer</sub> {
/* NUM   
</p>
<ul class="org-ul">
<li>--------------------------------------------------------------------------------------------------------------------------------------------------&#x2013;&#x2014;</li>
<li>|  TRNS  |  TRNS |  F7   |  F8   |  F9   |  BRK  |--------------------------------&#x2013;&#x2014;|  MUTE  |  C<sub>VOL</sub><sub>UP</sub>  |   C<sub>VOL</sub><sub>DN</sub>   |   BRK    | TRNS  |  TRNS |</li>
<li>|  TRNS  |  INS  |  F1   |  F2   |  F3   |  F10  |--------------------------------&#x2013;&#x2014;|  Left  |  Down      |   Up         |   Right  | ENTER |  TRNS |</li>
<li>|  TRNS  |  INS  |  F4   |  F5   |  F6   |  F11  | ADJ<sub>L</sub> |----------------&#x2013;&#x2014;| TRNS  |  TRNS  |  PG<sub>DN</sub>     |   PG<sub>UP</sub>      |   ALT    | DEL   |  TRNS |</li>
<li>------------&#x2013;&#x2014;| CTRL  |&#x2014;| TRNS | TRNS | TRNS |     INS    |&#x2013;&#x2014;|  PSCRN  |-&#x2014;TRNS&#x2013;&#x2014;|-&#x2014;TRNS-&#x2014;|-&#x2013;&#x2014;TRNS-&#x2014;|-&#x2014;| CTRL  |------------&#x2013;&#x2014;</li>
</ul>
<p>
 */
                        bindings = &lt;
&amp;trans  &amp;none     &amp;kp F7  &amp;kp F8    &amp;kp F9   &amp;kp BRK                                       &amp;kp C<sub>MUTE</sub> &amp;kp C<sub>VOL</sub><sub>UP</sub>  &amp;kp C<sub>VOL</sub><sub>DN</sub>  &amp;kp BRK    &amp;trans     &amp;trns
&amp;trans  &amp;kp  INS  &amp;kp F1  &amp;kp F2    &amp;kp F3   &amp;kp F10                                       &amp;kp LEFT   &amp;kp DOWN      &amp;kp  UP       &amp;kp RIGHT  &amp;kp ENTER  &amp;trans
&amp;trans  &amp;kp  INS  &amp;kp F4  &amp;kp F6    &amp;kp F6   &amp;kp F11 &amp;mo ADJ<sub>L</sub>                    &amp;trans   &amp;trans     &amp;kp PG<sub>DN</sub>     &amp;kp  PG<sub>UP</sub>    &amp;kp RCTRL  &amp;kp LALT   &amp;trans
                    &amp;kp LCTRL   &amp;trans  &amp;trans   &amp;trans  &amp;kp INS   &amp;kp PSCRN  &amp;trans &amp;trans  &amp;trans      &amp;kp RCTRL   
                        &gt;;
</p>

<p>
        sensor-bindings = &lt;&amp;inc<sub>dec</sub><sub>kp</sub> PG<sub>UP</sub> PG<sub>DN</sub> &amp;inc<sub>dec</sub><sub>kp</sub> C<sub>VOL</sub><sub>UP</sub> C<sub>VOL</sub><sub>DN</sub>&gt;;
};
</p>

<p>
                adj<sub>layer</sub> {
/* ADJUST
</p>
<ul class="org-ul">
<li>--------------------------------------------------------------------------------------------------------------------------------&#x2013;&#x2014;</li>
<li>| RGB<sub>TOG</sub> | QWERTY| DVORAK| COLEMK|       |       |------------------------------&#x2013;&#x2014;|       |Prt Scr|       | EP<sub>OFF</sub>| EP<sub>ON</sub> |       |</li>
<li>|         | BT 0  | BT 1  | BT 2  | BT 3  | BT 4  |------------------------------&#x2013;&#x2014;|       |       |       |       |       |       |</li>
<li>| BOOTL   | RESET |       |OUT<sub>USB</sub>|OUT<sub>BLE</sub>|       |BT CLR |--------------&#x2013;&#x2014;|       |       |       |       |       |       | SHIFT |</li>
<li>-------------&#x2013;&#x2014;|       |--&#x2013;&#x2014;|       |       |       |       |&#x2014;|       |       |       |       |--&#x2013;&#x2014;| CTRL  |-----------&#x2013;&#x2014;</li>
</ul>
<p>
 */
                bindings = &lt;
&amp;rgb<sub>ug</sub> RGB<sub>TOG</sub> &amp;to  QWERTY<sub>L</sub> &amp;to  DVORAK<sub>L</sub> &amp;to  COLEMK<sub>L</sub> &amp;none         &amp;none                                                                             &amp;none             &amp;kp PRINTSCREEN    &amp;none         &amp;ext<sub>power</sub> EP<sub>OFF</sub>  &amp;ext<sub>power</sub> EP<sub>ON</sub> &amp;none
&amp;none           &amp;bt  BT<sub>SEL</sub> 0 &amp;bt  BT<sub>SEL</sub> 1 &amp;bt  BT<sub>SEL</sub> 2 &amp;bt  BT<sub>SEL</sub> 3 &amp;bt  BT<sub>SEL</sub> 4                                                                     &amp;none             &amp;none              &amp;none            &amp;none           &amp;none            &amp;none
&amp;bootloader     &amp;reset        &amp;none         &amp;out OUT<sub>USB</sub>  &amp;out OUT<sub>BLE</sub>  &amp;none         &amp;bt BT<sub>CLR</sub>                                         &amp;none            &amp;none             &amp;none              &amp;none            &amp;none           &amp;none            &amp;trans
                            &amp;trans                      &amp;trans        &amp;trans        &amp;trans        &amp;trans                 &amp;trans        &amp;trans           &amp;trans            &amp;trans                              &amp;kp  RCTRL   
                        &gt;;
</p>

<p>
                        sensor-bindings = &lt;&amp;inc<sub>dec</sub><sub>kp</sub> C<sub>VOL</sub><sub>UP</sub> C<sub>VOL</sub><sub>DN</sub> &amp;inc<sub>dec</sub><sub>kp</sub> PG<sub>UP</sub> PG<sub>DN</sub>&gt;;
                };
        };
};
</p>
</body>
</html>
</richcontent>
</node>
</map>
