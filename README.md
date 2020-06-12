# _Animal Shelter API_

#### _A practice application using Ruby, Gem & Pry. DATE 6/12/20_

#### By _**Chisato Murakami**_

## Description
  _An Api that give information about cats and dogs at a shelter._

* **URL** 
  _https://afternoon-headland-99155.herokuapp.com/api/v1/animals_

|  Method |  URL  | Params | Response 
|---------------------------|---------|-------|-------
|**GET**|**api/v1/animals**|**N/A**|<code>[{"id": 1,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> },...]</code>
|**GET**|**api/v1/animals/:id**|**`id=[integer]`**|<code>[{"id": 1,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> }]</code>
|**POST**|**api/v1/animals/:id**|**`kind=[string]`<br>`name=[string]`<br>`age=[integer]`<br>`breed=[string]`**|<code>[{"id": 1,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> }]</code>
|**PUT or PATCH**|**api/v1/animals/:id**|**`kind=[string]`<br>`name=[string]`<br>`age=[integer]`<br>`breed=[string]`**|<code>{"message": "This animal has been updated successfully"}</code>
|**DELETE**|**api/v1/animals/:id**|**`id=[integer]`**|<code>{"message": "This animal has been deleted successfully"}</code>
|**GET**|**api/v1/animals/random**|**N/A**|<code>[{"id": 5,<br>"kind": "cat",<br>"name": "Poppy",<br> "age": 9,<br> "breed": "Abyssinian"<br> }]</code>
|**GET**|**api/v1/animals/search**|**`kind=[string]`**|<code>[{"id": 1,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> }, ...]</code>
|**GET**|**api/v1/animals/new_faces**|**N/A**|<code>[{"id": 21,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> }, <br> {"id": 20,<br>"kind": "dog",<br>"name": "Roxy",<br> "age": 1,<br> "breed": "Appenzeller"<br> }, <br> {"id": 19,<br>"kind": "dog",<br>"name": "Oreo",<br> "age": 10,<br> "breed": "Pembroke "<br> }]</code>


## Known Bugs

_No known bugs at this time_

## Support and contact details

_If you have any questions or any issues please feel free to submit an issue here: kiwipom1031@gmail.com_

## Technologies Used

_Ruby, Gem, RSpec_

### Licenses
*MIT LICENSE*

Copyright (c) 2020 **Chisato Murakami**