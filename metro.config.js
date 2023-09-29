// to fix mjs support in expo

const { getDefaultConfig } = require("expo/metro-config");
const config = getDefaultConfig(__dirname);
config.resolver.sourceExts.push("mjs");
module.exports = config;
