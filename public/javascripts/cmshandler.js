(() => {
  //cms handler stub
  console.log('cms handler loaded');

//variables always at the top - select stuff from the DOM
  let submitButton = document.querySelector('.add-data');
  targetForm = document.querySelector('form');

//functions here
  function addRecord(e){
    e.preventDefault(); // kill the deafault submit action


    var formData = new FormData(targetForm);
        strData = {};

   for (var [key, value] of formData.entries()) {
     console.log(key, value);

     strData[key] = value;
   }

//run a fetch and db a post
let url = "api/";


fetch(url, {
  method : 'post',
  headers : {
    'Accept' : 'application/json, text-plain, */*',
    'Content-type' : 'application/json'
  },

  body : JSON.stringify(strData)
  })
  .then((resp) => resp.json())
  .then((data) => {
    console.log(data);

  })
.catch(err => {
  console.log(err);
});

  }


// event handling always goes at the bottom
  submitButton.addEventListener('click', addRecord);

})();
