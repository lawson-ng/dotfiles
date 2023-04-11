const fs = require("fs");
const file = "plugins.txt";

const data = fs.readFileSync(file, { encoding: "utf8" });

const packages = data.split("\n").filter(Boolean);

const result = "";
packages.forEach((package) => {
  let str = "";
  const name = package.split(" ").at(0);
  const url = package.split(" ").at(-1);
  str += `- [${name}](${url}):`;
  const api = url.replace("github.com", "api.github.com/repos");

  fetch(api)
    .then((res) => res.json())
    .then((result) => {
      str += ` ${result.description}`;
      console.log(str);
    });
});
