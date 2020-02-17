function main() {
    console.log('service 1: ' + new Date());
    setTimeout(function(){ main(); }, 3000);
}
main();
