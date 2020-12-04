import { fetchData } from './modules/TheDataMiner.js'
import ImgText from './modules/TheImgText.js';

(() => {
    new Vue({
        data: {
            coopers: [],
            currentImgVideo: {},
            imgVideos: [],
            currentImgText: {},
            imgTexts: []
        },
        created() {
            this.init();
        },
        methods: {
            init() {
                fetchData('/includes/index.php').then(r => {
                    this.processSuccess(r);
                }).catch((e) => {
                    location.href = '../error.html';
                });
            },
            processSuccess(r) {
                this.coopers = r;
                this.coopers = this.coopers.map(v=>{
                    v.active = false;
                    return v;
                });
                console.log(this.coopers);
                this.imgVideos = this.coopers.filter(v => v.type == 'video');
                this.currentImgVideo = this.imgVideos[0];
                this.currentImgVideo.active = true;
                this.imgTexts = this.coopers.filter(v => v.type == 'text');
                this.currentImgText = this.imgTexts[0];
                this.currentImgText.active = true;
            },
            onChangeVideo(item) {
                this.imgVideos.forEach(v => {
                    v.active = false;
                });
                this.currentImgVideo = this.imgVideos.find(v => v.id == item.id);
                this.currentImgVideo.active = true;
            }
        },
        components:{
            ImgText
        }
    }).$mount('#home');

})();