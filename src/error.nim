type ErrorType* = enum
  MN_ERROR_OPENING_FILE = "Error opening file '{s}'."
  MN_ERROR_CLOSING_FILE = "Error closing file '{s}'."

  LX_LINE_CONTINUATION =
    "{s}:{d}: a line with continuation may not be followed by an empty line"
  LX_MULTIPLE_LINE_COMMENT =
    "{s}:{d}: multiple line comment may not appear on the same line as code"
  LX_EXPECTED_TOKEN_DELIMITER =
    "{s}:{d}: expected token delimiter after string literal"

  TK_EXPECTED_FLOATING_POINT = "{s}:{u}: expected floating point decimal value"
  TK_EXPECTED_INTEGER = "{s}:{u}: expected integer value"
  TK_UNKNOWN_TOKEN = "{s}:{u}: unknown token at: {s}"

  PR_UNKNOWN_IDENTIFIER_TYPE =
    "{s}:{u}: unable to delete unknown identifier type"
  PR_UNKNOWN_STATEMENT_TYPE = "unable to delete unknown statement type"
  PR_UNKNOWN_EXPRESSION_TYPE = "unable to delete unknown expression type"
  PR_EXPECTED_BOOLEAN = "{s}:{u}: expected integer at: {s}"
  PR_EXPECTED_INTEGER = "{s}:{u}: expected integer at: {s}"
  PR_EXPECTED_FLOAT = "{s}:{u}: expected float at: {s}"
  PR_EXPECTED_STRING = "{s}:{u}: expected string at: {s}"
  PR_EXPECTED_CONSTANT = "{s}:{u}: expected constant value at: {s}"
  PR_EXPECTED_TYPE = "{s}:{u}: expected type at: {s}"
  PR_EXPECTED_IDENTIFIER = "{s}:{u}: expected identifier at: {s}"
  PR_EXPECTED_TOKEN = "{s}:{u}: expected {s} at: {s}"
  PR_INVALID_OPERATOR = "{s}:{u}: invalid operator at: {s}"
  PR_EXPECTED_EXPRESSION = "{s}:{u}: expected expression at: {s}"
  PR_EXPECTED_END_OF_EXPRESSION = "{s}:{u}: expected end of expression at: {s}"
  PR_EXPECTED_END_OF_STATEMENT = "{s}:{u}: expected end of statement at: {s}"
  PR_CANNOT_USE_STR_AS_LITERAL =
    "{s}:{u}: cannot use an interpolated string as an OMG literal at: {s}"
    # as someone who's never used lolcode, wtf is an "omg literal"???
    # i'll leave the weird name until i understand where it fits
  PR_LITERAL_MUST_BE_UNIQUE = "{s}:{u}: OMG literal must be unique at: {s}"
  PR_EXPECTED_LOOP_NAME = "{s}:{u}: expected loop name at: {s}"
  PR_EXPECTED_EITHER_TOKEN = "{s}:{u}: expected {s} or {s} at: {s}"
  PR_EXPECTED_UNARY_FUNCTION = "{s}:{u}: expected unary function at: {s}"
  PR_EXPECTED_MATCHING_LOOP_NAME =
    "{s}:{u}: expected matching loop name at: {s}"
  PR_EXPECTED_STATEMENT = "{s}:{u}: expected statement at: {s}"
  PR_UNHANDLED_STRING = "unhandled string detected"

  IN_INVALID_IDENTIFIER_TYPE = "{s}:{u} invalid identifier type at: {s}"
  IN_UNABLE_TO_STORE_VARIABLE = "{s}:{u} unable to store variable: {s}"
  IN_VARIABLE_DOES_NOT_EXIST = "{s}:{u} variable does not exist: {s}"
  IN_CANNOT_IMPLICITLY_CAST_NIL = "Cannot implicitly cast nil"
  IN_CANNOT_CAST_FUNCTION_TO_BOOLEAN = "Cannot cast function to boolean value"
  IN_CANNOT_CAST_ARRAY_TO_BOOLEAN = "Cannot cast array to boolean value"
  IN_UNKNOWN_VALUE_DURING_BOOLEAN_CAST =
    "Unknown value type encountered during boolean cast"
  IN_UNABLE_TO_CAST_VALUE = "Unable to cast value"
  IN_EXPECTED_INTEGER_VALUE = "Expected integer value"
  IN_CANNOT_CAST_FUNCTION_TO_INTEGER = "Cannot cast function to integer value"
  IN_CANNOT_CAST_ARRAY_TO_INTEGER = "Cannot cast array to integer value"
  IN_UNKNOWN_VALUE_DURING_INTEGER_CAST =
    "Unknown value type encountered during integer cast"
  IN_EXPECTED_DECIMAL = "Expected floating point decimal value"
  IN_CANNOT_CAST_FUNCTION_TO_DECIMAL =
    "Cannot cast function to floating point decimal value"
  IN_CANNOT_CAST_ARRAY_TO_DECIMAL =
    "Cannot cast array to floating point decimal value"
  IN_UNKNOWN_VALUE_DURING_DECIMAL_CAST =
    "Unknown value type encountered during floating point decimal cast"
  IN_CANNOT_CAST_BOOLEAN_TO_STRING = "Cannot cast boolean to string value"
  IN_EXPECTED_CLOSING_PAREN = "Expected closing parenthesis after :("
  IN_INVALID_HEX_NUMBER = "Please supply a valid hexadecimal number"
  IN_CODE_POINT_MUST_BE_POSITIVE = "Code point is supposed to be positive"
  IN_EXPECTED_CLOSING_SQUARE_BRACKET =
    "Expected closing square bracket after :["
  IN_EXPECTED_CLOSING_CURLY_BRACE = "Expected closing curly brace after :{"
  IN_VARIABLE_NOT_AN_ARRAY = "{s}:{u} variable is not an array: {s}"
  IN_CANNOT_CAST_FUNCTION_TO_STRING = "Cannot cast function to string value"
  IN_CANNOT_CAST_ARRAY_TO_STRING = "Cannot cast array to string value"
  IN_UNKNOWN_VALUE_DURING_STRING_CAST =
    "Unknown value type encountered during string cast"
  IN_UNKNOWN_CAST_TYPE = "Unknown cast type"
  IN_UNDEFINED_FUNCTION = "{s}:{u}: undefined function at: {s}"
  IN_INCORRECT_NUMBER_OF_ARGUMENTS =
    "{s}:{u}: incorrect number of arguments supplied to: {s}"
  IN_INVALID_RETURN_TYPE = "Invalid return type"
  IN_UNKNOWN_CONSTANT_TYPE = "Unknown constant type"
  IN_DIVISION_BY_ZERO = "Division by zero undefined"
  IN_INVALID_OPERAND_TYPE = "Invalid operand type"
  IN_INVALID_BOOLEAN_OPERATION_TYPE = "Invalid boolean operation type"
  IN_INVALID_EQUALITY_OPERATION_TYPE = "Invalid equality operation type"
  IN_REDEFINITION_OF_VARIABLE =
    "{s}:{u}: redefinition of existing variable at: {s}"
  IN_INVALID_DECLARATION_TYPE = "Unknown declaration type"
  IN_INVALID_TYPE = "Invalid type"
  IN_FUNCTION_NAME_USED_BY_VARIABLE =
    "{s}:{u}: function name already used by existing variable at: {s}"
  IN_CANNOT_CAST_VALUE_TO_ARRAY = "{s}:{u}: cannot cast value to array at: {s}"

const err_codes = [
  # The 100 block is for the main body 
  100, # MN_ERROR_OPENING_FILE 
  101, # MN_ERROR_CLOSING_FILE 

  # The 200 block is for the lexer 
  200, # LX_LINE_CONTINUATION 
  201, # LX_MULTIPLE_LINE_COMMENT 
  202, # LX_EXPECTED_TOKEN_DELIMITER 

  # The 300 block is for the tokenizer 
  300, # TK_EXPECTED_FLOATING_POINT 
  301, # TK_EXPECTED_INTEGER 
  302, # TK_UNKNOWN_TOKEN 

  # The 400 block is for the parser 
  400, # PR_UNKNOWN_IDENTIFIER_TYPE 
  401, # PR_UNKNOWN_STATEMENT_TYPE 
  402, # PR_UNKNOWN_EXPRESSION_TYPE 
  403, # PR_EXPECTED_BOOLEAN 
  404, # PR_EXPECTED_INTEGER 
  405, # PR_EXPECTED_FLOAT 
  406, # PR_EXPECTED_STRING 
  407, # PR_EXPECTED_CONSTANT 
  408, # PR_EXPECTED_TYPE 
  409, # PR_EXPECTED_IDENTIFIER 
  410, # PR_EXPECTED_TOKEN 
  411, # PR_INVALID_OPERATOR 
  412, # PR_EXPECTED_EXPRESSION 
  413, # PR_EXPECTED_END_OF_EXPRESSION 
  414, # PR_EXPECTED_END_OF_STATEMENT 
  415, # PR_CANNOT_USE_STR_AS_LITERAL 
  416, # PR_LITERAL_MUST_BE_UNIQUE 
  417, # PR_EXPECTED_LOOP_NAME 
  418, # PR_EXPECTED_ONE_OF 
  419, # PR_EXPECTED_UNARY_FUNCTION 
  420, # PR_EXPECTED_MATCHING_LOOP_NAME 
  421, # PR_EXPECTED_STATEMENT 

  # The 500 block is for the interpreter 
  500, # IN_INVALID_IDENTIFIER_TYPE 
  501, # IN_UNABLE_TO_STORE_VARIABLE 
  502, # IN_VARIABLE_DOES_NOT_EXIST 
  503, # IN_CANNOT_IMPLICITLY_CAST_NIL 
  504, # IN_CANNOT_CAST_FUNCTION_TO_BOOLEAN 
  505, # IN_CANNOT_CAST_ARRAY_TO_BOOLEAN 
  506, # IN_UNKNOWN_VALUE_DURING_BOOLEAN_CAST 
  507, # IN_UNABLE_TO_CAST_VALUE 
  508, # IN_EXPECTED_INTEGER_VALUE 
  509, # IN_CANNOT_CAST_FUNCTION_TO_INTEGER 
  510, # IN_CANNOT_CAST_ARRAY_TO_INTEGER 
  511, # IN_UNKNOWN_VALUE_DURING_INTEGER_CAST 
  512, # IN_EXPECTED_DECIMAL 
  513, # IN_CANNOT_CAST_FUNCTION_TO_DECIMAL 
  514, # IN_CANNOT_CAST_ARRAY_TO_DECIMAL 
  515, # IN_UNKNOWN_VALUE_DURING_DECIMAL_CAST 
  516, # IN_CANNOT_CAST_BOOLEAN_TO_STRING 
  517, # IN_EXPECTED_CLOSING_PAREN 
  518, # IN_INVALID_HEX_NUMBER 
  519, # IN_CODE_POINT_MUST_BE_POSITIVE 
  520, # IN_EXPECTED_CLOSING_SQUARE_BRACKET 
  521, # IN_EXPECTED_CLOSING_CURLY_BRACE 
  522, # IN_VARIABLE_NOT_AN_ARRAY 
  523, # IN_CANNOT_CAST_FUNCTION_TO_STRING 
  524, # IN_CANNOT_CAST_ARRAY_TO_STRING 
  525, # IN_UNKNOWN_VALUE_DURING_STRING_CAST 
  526, # IN_UNKNOWN_CAST_TYPE 
  527, # IN_UNDEFINED_FUNCTION 
  528, # IN_INCORRECT_NUMBER_OF_ARGUMENTS 
  529, # IN_INVALID_RETURN_TYPE 
  530, # IN_UNKNOWN_CONSTANT_TYPE 
  531, # IN_DIVISION_BY_ZERO 
  532, # IN_INVALID_OPERAND_TYPE 
  533, # IN_INVALID_BOOLEAN_OPERATION_TYPE 
  534, # IN_INVALID_EQUALITY_OPERATION_TYPE 
  535, # IN_REDEFINITION_OF_VARIABLE 
  536, # IN_INVALID_DECLARATION_TYPE 
  537, # IN_INVALID_TYPE 
  538, # IN_FUNCTION_NAME_USED_BY_VARIABLE 
  539, # IN_CANNOT_CAST_VALUE_TO_ARRAY 
  ]


#[

  -> error.h
void error(ErrorType, ...);

  -> error.c
void error(ErrorType e, ...)
{
  va_list args;
  va_start(args, e);
  vfprintf(stderr, err_msgs[e], args);
  va_end(args);

  exit(err_codes[e]);
}

]#