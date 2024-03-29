import { defineConfig } from "vite";
import RubyPlugin from "vite-plugin-ruby";
import WindiCSS from "vite-plugin-windicss";
import FullReload from "vite-plugin-full-reload";

export default defineConfig({
  plugins: [
    RubyPlugin(),
    WindiCSS({
      root: __dirname,
      scan: {
        fileExtensions: [
          "erb",
          "haml",
          "html",
          "vue",
          "js",
          "ts",
          "jsx",
          "tsx",
        ],
        dirs: ["app/views", "app/javascript"],
      },
    }),
    FullReload(["config/routes.rb", "app/views/**/*"], { delay: 200 }),
  ],
});
