function StorageService(origin){
    const get = function() {
        var data = localStorage.getItem(origin);
        var convertedData = JSON.parse(data);
        return convertedData;
    }

    const save = function(data) {
        var convertedData = JSON.stringify(data);
        localStorage.setItem(origin, convertedData);
    }

    return {get, save}
}