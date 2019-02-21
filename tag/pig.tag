<pig>
  <img src="img/{ pig }.gif">


  <div>
    <div class="pig mood">
      <div style="width:{ mood }%;">&nbsp;</div>
    </div>
    <p>Sleepy or Energetic: { mood }</p>
  </div>


  <button onclick={ sleepy }>Sleepy</button>
  <button onclick={ energetic }>Energetic</button>


  <script>

    var that  = this;

    this.mood = 40;
    this.pig = "pig";


    window.setInterval(function(){
      that.decmood();
      console.log("wait");
      that.update();
      that.checkStatus();
    }, 3000);


    decmood() {

      this.mood = this.mood - 9 < 0 ? 0 : this.mood - 9;
    }

    incmood() {
      console.log(this.mood);
      this.mood = this.mood + 9 > 50 ? 50 : this.mood + 9;
    }

    checkStatus() {
      if (this.mood >= 50){
        this.pig = "sleepy";
      } else if (this.mood <= 25){
        this.pig = "energetic";
      }else{
        this.pig = "pig";
      }
    }

    sleepy(e) {
      this.incmood();
      this.checkStatus();
    }

    energetic(e) {
      this.decmood();
      this.checkStatus();
    }
  </script>

  <style>
  :scope{
    margin:auto;
  }

  img{
    weight:auto;
    height:200px;
  }

  </style>
</pig>
