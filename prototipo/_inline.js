
  // stagger reveal delays within each group, then observe
  document.querySelectorAll('.reveal-group').forEach(function(group){
    var items = group.querySelectorAll('.reveal');
    items.forEach(function(el, i){ el.style.transitionDelay = (Math.min(i,6) * 0.09) + 's'; });
  });
  var io = new IntersectionObserver(function(entries){
    entries.forEach(function(entry){
      if(entry.isIntersecting){
        entry.target.classList.add('in-view');
        io.unobserve(entry.target);
      }
    });
  }, {threshold:0.12, rootMargin:'0px 0px -40px 0px'});
  document.querySelectorAll('.reveal').forEach(function(el){ io.observe(el); });

  // hero tile crossfade label
  var labels = ["Poesia","Memória","Fé","Família","Educação"];
  var li = 0;
  var labelEl = document.getElementById('heroLabel');
  if(labelEl){
    setInterval(function(){
      labelEl.classList.remove('show');
      setTimeout(function(){
        li = (li + 1) % labels.length;
        labelEl.textContent = labels[li];
        labelEl.classList.add('show');
      }, 400);
    }, 3200);
  }

  // pause marquee when off-screen (performance)
  var marquee = document.getElementById('marqueeTrack');
  if(marquee){
    var mio = new IntersectionObserver(function(entries){
      entries.forEach(function(entry){
        marquee.style.animationPlayState = entry.isIntersecting ? 'running' : 'paused';
      });
    }, {threshold:0});
    mio.observe(marquee);
  }
