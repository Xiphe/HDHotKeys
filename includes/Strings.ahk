; ----------------------------------------------------------------------------
; "THE BEER-WARE LICENSE" (Revision 42):
; <xiphe@gmx.de> wrote this file. As long as you retain this notice you
; can do whatever you want with this stuff. If we meet some day, and you think
; this stuff is worth it, you can buy me a beer in return Hannes Diercks
; ----------------------------------------------------------------------------


;///////////////////////////////////////// GENERAL
MFG = 
(
mit freundlichen Grüßen
)
MFGA = 
(
mit freundlichen Grüßen von der Alster,
%NAME%
)

;///////////////////////////////////////// PHP
DOC_START = 
(
`/** __documentation__
 *
)
DOC_SMALL = 
(
`/** __documentation__ **/
)
DOC_PARAM =
(
 * @param __type__ $__name__ __description__
)
DOC_RETURN =
(
 * @return __type__ __description__
)

DOC_FIRST3 =
(
%DOC_START%
 %DOC_PARAM%
 %DOC_RETURN%
)
DOC_COPY =
(
 * @copyright ©%A_YYYY% %COPYNAME%
)
DOC_AUTHOR = 
(
 * @author %AUTHORNAME%
)
DOC_DATE = 
(
 * @date %A_MMM% %A_DD%th %A_YYYY%
)

DOC_END = 
(
 */
)

DOC_F = 
(
%DOC_FIRST3%
 %DOC_AUTHOR%
 %DOC_DATE%
 %DOC_END%
)
DOC =
(
%DOC_SMALL%
)


FUNCTION = 
(
function __name__(__vars__) {
	__code__;
}
)


F_GEN =
(
%DOC_FIRST3%
 %DOC_AUTHOR%
 %DOC_DATE%
 %DOC_END%
%FUNCTION%
)



F_PUB =
(
%DOC_FIRST3%
 * @access public
 %DOC_AUTHOR%
 %DOC_DATE%
 %DOC_END%
public %FUNCTION%
)

F_PRI =
(
%DOC_FIRST3%
 * @access private
 %DOC_AUTHOR%
 %DOC_DATE%
 %DOC_END%
private %FUNCTION%
)

F_PRO =
(
%DOC_FIRST3%
 * @access	protected
 %DOC_AUTHOR%
 %DOC_DATE%
 %DOC_END%
protected %FUNCTION%
)

PHP_IF =
(
if($__foo__ == $__bar__) {
	__code__;
} 
)

PHP_ELSE =
(
%A_SPACE%else {
	__code__;
}
)
PHP_ELSEIF =
(
%A_SPACE%elseif($__foo__ == $__bar__) {
	__code__;
}
)

PHP_SHORT_IF =
(
$__foo__ = __operator__ ? $__foo__ : $__bar__;
)

PHP_FOREACH=
(
foreach($__foo__ as $__key__ => $__value__) {
	__code__;
}
)

PHP_SWITCH_CASE =
(
case __case__:
	__instructions__;
	break;
)

PHP_SWITCH =
(
switch($__var__) {
	case __case__:
		__instructions__;
		break;
	default:
		break;
}
)




