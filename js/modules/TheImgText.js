export default {
    name: 'TheImgText',
    props: ['singleImg', 'imgs'],
    data() {
        return {
            currentImgText: null,
            imgTexts: null
        }
    },
    created() {
        this.currentImgText = this.singleImg;
        this.imgTexts = this.imgs;
    },
    watch: {
        singleImg(val) {
            this.currentImgText = val;
        },
        imgs(val) {
            this.imgTexts = val;
        }
    },
    methods: {
        onChangeText(item) {
            this.imgTexts.forEach(v => {
                v.active = false;
            });
            this.currentImgText = this.imgTexts.find(v => v.id == item.id);
            this.currentImgText.active = true;
        }
    },
    template: `
                <div class="change-text container" v-if="imgTexts">
                    <div class="left">
                        <h2>Select Your Model:</h2>
                        <div class="imgs">
                            <div v-for="(item,index) in imgTexts" :key="index" class="img" @click="onChangeText(item)" :class="{active: item.active}">
                                <img :src="item.img" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="right">
                        <h2>{{currentImgText.title}}</h2>
                        <p class="price">{{currentImgText.price}}</p>
                        <div class="content" v-html="currentImgText.desc"></div>
                    </div>
                </div>
            `
}