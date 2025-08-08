local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Foreach loop snippet
  s("foreach", {
    t("foreach ("),
    i(1, "var"),
    t(" "),
    i(2, "item"),
    t(" in "),
    i(3, "collection"),
    t(")"),
    t({"", "{"}),
    t({"", "\t"}),
    i(0),
    t({"", "}"}),
  }),

  -- For loop snippet
  s("for", {
    t("for (int "),
    i(1, "i"),
    t(" = 0; "),
    t("i"),
    t(" < "),
    i(2, "length"),
    t("; "),
    t("i"),
    t("++)"),
    t({"", "{"}),
    t({"", "\t"}),
    i(0),
    t({"", "}"}),
  }),

  -- If statement snippet
  s("if", {
    t("if ("),
    i(1, "condition"),
    t(")"),
    t({"", "{"}),
    t({"", "\t"}),
    i(0),
    t({"", "}"}),
  }),

  -- Class snippet
  s("class", {
    t("public class "),
    i(1, "ClassName"),
    t({"", "{"}),
    t({"", "\t"}),
    i(0),
    t({"", "}"}),
  }),

  -- Method snippet
  s("method", {
    t("public "),
    i(1, "void"),
    t(" "),
    i(2, "MethodName"),
    t("("),
    i(3),
    t(")"),
    t({"", "{"}),
    t({"", "\t"}),
    i(0),
    t({"", "}"}),
  }),
}
