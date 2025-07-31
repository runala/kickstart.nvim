local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Each statement snippet
  s("each", {
    t("{#each "),
    i(1, "items"),
    t(" as "),
    i(2, "item"),
    t("}"),
    t({"", "\t"}),
    i(0),
    t({"", "{/each}"}),
  }),

  -- Each with index snippet
  s("eachi", {
    t("{#each "),
    i(1, "items"),
    t(" as "),
    i(2, "item"),
    t(", "),
    i(3, "index"),
    t("}"),
    t({"", "\t"}),
    i(0),
    t({"", "{/each}"}),
  }),

  -- If statement snippet
  s("if", {
    t("{#if "),
    i(1, "condition"),
    t("}"),
    t({"", "\t"}),
    i(0),
    t({"", "{/if}"}),
  }),

  -- If-else statement snippet
  s("ifelse", {
    t("{#if "),
    i(1, "condition"),
    t("}"),
    t({"", "\t"}),
    i(2, "content"),
    t({"", "{:else}"}),
    t({"", "\t"}),
    i(0),
    t({"", "{/if}"}),
  }),

  -- Await statement snippet
  s("await", {
    t("{#await "),
    i(1, "promise"),
    t("}"),
    t({"", "\t"}),
    i(2, "loading..."),
    t({"", "{:then "}),
    i(3, "result"),
    t("}"),
    t({"", "\t"}),
    i(0),
    t({"", "{/await}"}),
  }),

  -- Snippet definition
  s("snippet", {
    t("{#snippet "),
    i(1, "snipname"),
    t("()}"),
    t({"", "\t"}),
    i(0),
    t({"", "{/snippet}"}),
  }),

  -- Script tag with props
  s("script", {
    t("<script lang='ts'>"),
    t({"", "\tconst { "}),
    i(1, "data"),
    t(" } = $props();"),
    t({"", "", "\t"}),
    i(0),
    t({"", "</script>"}),
  }),
}