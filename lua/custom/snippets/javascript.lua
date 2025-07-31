local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- PageServerLoad function (for +page.server.js files)
  s("load", {
    t("/** @type {import('./$types').PageServerLoad} */"),
    t({"", "export const load = async ({"}),
    i(1, "locals"),
    t("}) => {"),
    t({"", "\t"}),
    i(0),
    t({"", "};"}),
  }),

  -- Actions export (for form actions in +page.server.js)
  s("actions", {
    t("/** @type {import('./$types').Actions} */"),
    t({"", "export const actions = {"}),
    t({"", "\t"}),
    i(1, "default"),
    t(": async ({ request, "),
    i(2, "locals"),
    t(" }) => {"),
    t({"", "\t\t"}),
    i(0),
    t({"", "\t},"}),
    t({"", "};"}),
  }),
}