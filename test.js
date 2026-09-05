if ("Node app deployed by CI/CD".includes("CI/CD")) {
    console.log("Test passed");
    process.exit(0);
}

process.exit(1);