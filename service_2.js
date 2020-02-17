function main() {
    console.log('service 2: ' + new Date());
    setTimeout(function(){ main(); }, 5000);
}
main();
