local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- PageServerLoad function (for +page.server.ts files)
  s("load", {
    t("import type { PageServerLoad, Actions } from \"./$types\";"),
    t({"", "", "export const load: PageServerLoad = async ({"}),
    i(1, "locals"),
    t("}) => {"),
    t({"", "\t"}),
    i(0),
    t({"", "};"}),
  }),

  -- Actions export (for form actions in +page.server.ts)
  s("actions", {
    t("export const actions: Actions = {"),
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