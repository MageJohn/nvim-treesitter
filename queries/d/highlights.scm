;; Misc

[
  (line_comment)
  (block_comment)
  (nesting_block_comment)
] @comment

[
  "(" ")"
  "[" "]"
  "{" "}"
] @punctuation.bracket

[
  ","
  ";"
  "."
] @punctuation.delimiter

[
  ".."
  "$"
] @punctuation.special

;; Constants

[
  "__FILE_FULL_PATH__"
  "__FILE__"
  "__FUNCTION__"
  "__LINE__"
  "__MODULE__"
  "__PRETTY_FUNCTION__"
] @constant.macro

[
  (wysiwyg_string)
  (alternate_wysiwyg_string)
  (double_quoted_string)
  (hex_string)
  (delimited_string)
  (token_string)
] @string

(character_literal) @character

(integer_literal) @number

(float_literal) @float

[
  "true"
  "false"
] @boolean

;; Functions

(func_declarator
  (identifier) @function
)

[
  "__traits"
  "__vector"
  "assert"
  "is"
  "mixin"
  "pragma"
  "typeid"
] @function.builtin

(import_expression
  "import" @function.builtin
)

(parameter
  (var_declarator
    (identifier) @parameter
  )
)

(function_literal
  (identifier) @parameter
)

(constructor
  "this" @constructor
)

(destructor
  "this" @constructor
)

;; Keywords

[
  "case"
  "default"
  "else"
  "if"
  "switch"
] @conditional

[
  "break"
  "continue"
  "do"
  "for"
  "foreach"
  "foreach_reverse"
  "while"
] @repeat

[
  "__gshared"
  "__parameters"
  "abstract"
  "alias"
  "align"
  "asm"
  "auto"
  "body"
  "class"
  "const"
  "debug"
  "deprecated"
  "enum"
  "export"
  "extern"
  "final"
  "goto"
  "immutable"
  "inout"
  "interface"
  "invariant"
  "lazy"
  "macro"
  "nothrow"
  "null"
  "out"
  "override"
  "package"
  "private"
  "protected"
  "public"
  "pure"
  "ref"
  "scope"
  "shared"
  "static"
  "struct"
  "synchronized"
  "template"
  "union"
  "unittest"
  "version"
  "with"
] @keyword

[
  "delegate"
  "function"
] @keyword.function

"return" @keyword.return

[
  "cast"
  "new"
] @keyword.operator

[
  "+"
  "++"
  "+="
  "-"
  "--"
  "-="
  "*"
  "*="
  "%"
  "%="
  "^"
  "^="
  "^^"
  "^^="
  "/"
  "/="
  "|"
  "|="
  "||"
  "~"
  "~="
  "="
  "=="
  "=>"
  "<"
  "<="
  "<<"
  "<<="
  ">"
  ">="
  ">>"
  ">>="
  ">>>"
  ">>>="
  "!"
  "!="
  "&"
  "&&"
] @operator

[
  "catch"
  "finally"
  "throw"
  "try"
] @exception

(module_declaration
  "module" @include
)

(import_declaration
  "import" @include
)

(type) @type

(catch_parameter
  (qualified_identifier) @type
)

(var_declarations
  (qualified_identifier) @type
)

(func_declaration
  (qualified_identifier) @type
)

(parameter
  (qualified_identifier) @type
)

(class_declaration
  (identifier) @type
)

(fundamental_type) @type.builtin

[
  (module_name)
  (module_fully_qualified_name)
] @namespace

(at_attribute) @attribute

(user_defined_attribute
  "@" @attribute
)

;; Variables

(primary_expression
  "this" @variable.builtin
)
