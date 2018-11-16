var config = [
    {
        width: 400,
        top: 150,
        left: 550,
        opacity: 0,
        zIndex: 2
    },//0
    {
        width: 600,
        top: 130,
        left: 0,
        opacity: 0.3,
        zIndex: 3
    },//1
    {
        width: 800,
        top: 70,
        left: 400,
        opacity: 1,
        zIndex: 4
    },//2
    {
        width: 600,
        top: 130,
        left: 1000,
        opacity: 0.3,
        zIndex: 3
    },//3
];
//ҳ����ص��¼�
window.onload = function () {
    var flag = true;//�������еĶ���ִ������ˡ�����
    //1.ͼƬɢ��
    var list = my$("slide").getElementsByTagName("li");
    function assign () {
        for(var i=0;i<list.length;i++){
            //����ÿ��li����Ҫ�ѿ��㼶��͸���ȣ�left��top����ָ����Ŀ��λ��
            animate(list[i],config[i],function(){
                flag = true;
            })
        }
    }
    assign();

    //�ұ߰�ť
    my$("arrRight").onclick = function () {
        if(flag){
            flag = false;
            //��ӽ������β��  �������е�һ��ɾ��
            config.push(config.shift());
            assign();//���·���
        }
    }
    //��߰�ť
    my$("arrLeft").onclick = function () {
        //�����һ��ɾ�������س���ֵ���뿪ͷ
        if(flag){
            flag=false;
            config.unshift(config.pop());
            assign();
        }
    }

    //�����룬���ҽ����div��ʾ
    my$("slide").onmouseover = function () {
        animate(my$("arrow"),{"opacity":1});
    };
    //����뿪�����ҽ����div����
    my$("slide").onmouseout = function () {
        animate(my$("arrow"),{"opacity":0});
    };
}