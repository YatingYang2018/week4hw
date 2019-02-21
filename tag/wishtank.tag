<wishtank>
	<h3>Wish</h3>
	<button type="button" onclick={ tellWish }>Make A Wish</button>
	<div class="wishMaker">

		<input type="text" ref="wishContent" placeholder="Enter A wish">
		<button type="button" onclick={ addWish }>Add</button>
	</div>

	<div class ="wishContainer" each={myWish}>
		<p>{value}</p>
    <button type="button" onclick={ removeWish }>Remove</button>

  </div>

	<script>
		var that = this;

		this.myWish = [{
			value: "❤"
		},{
			value: "♫"
		},{
			value: "❀"
		},{
			value: "☀"
		}]



		this.removeWish = function(event) {

			var WishObj = event.item;

			var index = this.myWish.indexOf(WishObj);

			this.myWish.splice(index, 1);

		};

		this.addWish = function(event) {

			var newWish = {};

			newWish.value = this.refs.wishContent.value;


			this.myWish.push(newWish);
			this.refs.wishContent.value = "";
		};

		this.tellWish = function(){
			var max = this.myWish.length;
			var tempIndex = Math.floor(Math.random() * Math.floor(max));
			alert(this.myWish[tempIndex].value);
		}
	</script>


	<style>
		:scope {
			display: block;
			background: pink;
			padding: 20px;
     margin-top:20px;
		}
    button{
      margin-left: 3px;
    }
    p{
      padding: 10px;
    }
    .wishMaker{
      margin-top:20px;
    }

		.wishContainer{
			display: inline-block;
      margin-top:20px;
		}
	</style>
</wishtank>
