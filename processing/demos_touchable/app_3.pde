float[] noteStart = {11.06, 13.43, 17.89, 22.39, 24.62, 29.1, 38.21, 47.17, 54.03, 60.75, 67.62, 72.09, 76.59, 78.82, 83.3, 86.42, 89.43, 92.41, 96.88, 99.11, 103.75, 108.22, 110.47, 112.72, 119.43, 126.29, 133.01, 139.89, 144.35, 148.85, 151.08, 155.56, 158.68, 161.7, 164.67, 169.15, 171.37, 176.02, 180.48, 182.73, 184.98, 196.32, 198.55, 200.8, 203.05, 207.5, 212.15, 214.39, 216.62, 221.12, 223.34, 225.57, 232.45, 234.68, 236.93, 239.18, 243.64, 248.28, 252.75, 255, 268.59, 270.81, 273.06, 275.31, 279.77, 284.41, 286.65, 288.88, 293.38, 295.61, 297.83, 304.72, 311.44, 318.15, 340.85, 343.08, 345.33, 347.57, 352.03, 356.67, 358.91, 361.14, 365.64, 367.87, 370.1, 376.98, 379.21, 381.46, 383.71, 388.16, 392.81, 397.27, 399.52, 413.11, 415.34, 417.59, 419.84, 424.29, 428.94, 431.18, 433.4, 437.9, 440.13, 442.36, 449.24, 455.97, 462.68, 480.74, 483.13, 487.6, 492.1, 494.33, 498.81, 501.2, 505.67, 507.92, 516.87, 519.27, 523.73, 528.23, 530.46, 532.69, 553.01, 555.4, 559.86, 564.36, 566.59, 571.07, 573.46, 577.93, 580.18, 589.14, 591.53, 596, 600.49, 602.72, 607.2, 616.31, 625.27, 632.13, 638.85, 645.72, 650.19, 654.69, 656.92, 661.4, 664.52, 667.54, 670.51, 674.98, 677.21, 681.86, 686.32, 688.57, 690.82, 697.53, 704.39, 711.12, 717.99, 722.46, 726.95, 729.18, 733.66, 736.79, 739.8, 742.77, 747.25, 749.47, 754.12, 758.59, 760.84, 763.09, 769.79, 772.18, 776.65, 783.38, 787.86, 790.25, 794.72, 796.97, 805.93, 809.05, 812.06, 815.03, 818.01, 821.01, 823.99, 826.38, 830.85, 833.1, 842.06, 844.45, 848.92, 855.64, 860.12, 862.51, 866.98, 869.23, 878.19, 880.58, 885.05, 887.3, 890.27, 893.27, 896.25, 898.64, 903.11, 905.36, 914.32, 916.71, 921.18, 927.9, 932.39, 934.78, 939.24, 941.49, 950.45, 953.57, 956.59, 959.56, 962.54, 965.54, 968.52, 970.91, 975.38, 977.62, 986.58, 988.97, 993.44, 1000.17, 1004.65, 1007.04, 1011.51, 1013.76, 1022.71, 1025.1, 1029.57, 1031.82, 1034.8, 1037.8, 1040.78, 1043.17, 1047.64, 1049.89, 1058.85, 1061.24, 1065.7, 1070.2, 1072.43, 1076.91, 1079.3, 1083.77, 1086.02, 1094.98, 1097.37, 1101.83, 1106.33, 1108.56, 1110.79, 1131.11, 1133.5, 1137.97, 1142.47, 1144.69, 1149.17, 1151.56, 1156.03, 1158.28, 1167.24, 1169.63, 1174.1, 1178.6, 1180.82, 1185.3, 1194.41, 1203.37, 1205.76, 1210.23, 1216.96, 1221.44, 1223.83, 1228.29, 1230.54, 1239.5, 1242.62, 1245.64, 1248.61, 1251.59, 1254.59, 1257.57, 1259.96, 1264.43, 1266.68, 1275.63, 1278.02, 1282.49, 1289.22, 1293.7, 1296.09, 1300.56, 1302.81, 1311.76, 1314.16, 1318.62, 1320.87, 1323.85, 1326.85, 1329.83, 1332.22, 1336.69};
float[] noteEnd = {13.43, 17.89, 22.39, 24.62, 29.1, 38.21, 47.17, 54.03, 60.75, 67.62, 72.09, 76.59, 78.82, 83.3, 86.42, 89.43, 92.41, 96.88, 99.11, 103.75, 108.22, 110.47, 112.72, 119.43, 126.29, 133.01, 139.89, 144.35, 148.85, 151.08, 155.56, 158.68, 161.7, 164.67, 169.15, 171.37, 176.02, 180.48, 182.73, 184.98, 196.32, 198.55, 200.8, 203.05, 207.5, 212.15, 214.39, 216.62, 221.12, 223.34, 225.57, 232.45, 234.68, 236.93, 239.18, 243.64, 248.28, 252.75, 255, 268.59, 270.81, 273.06, 275.31, 279.77, 284.41, 286.65, 288.88, 293.38, 295.61, 297.83, 304.72, 311.44, 318.15, 340.85, 343.08, 345.33, 347.57, 352.03, 356.67, 358.91, 361.14, 365.64, 367.87, 370.1, 376.98, 379.21, 381.46, 383.71, 388.16, 392.81, 397.27, 399.52, 413.11, 415.34, 417.59, 419.84, 424.29, 428.94, 431.18, 433.4, 437.9, 440.13, 442.36, 449.24, 455.97, 462.68, 480.74, 483.13, 487.6, 492.1, 494.33, 498.81, 501.2, 505.67, 507.92, 516.87, 519.27, 523.73, 528.23, 530.46, 532.69, 553.01, 555.4, 559.86, 564.36, 566.59, 571.07, 573.46, 577.93, 580.18, 589.14, 591.53, 596, 600.49, 602.72, 607.2, 616.31, 625.27, 632.13, 638.85, 645.72, 650.19, 654.69, 656.92, 661.4, 664.52, 667.54, 670.51, 674.98, 677.21, 681.86, 686.32, 688.57, 690.82, 697.53, 704.39, 711.12, 717.99, 722.46, 726.95, 729.18, 733.66, 736.79, 739.8, 742.77, 747.25, 749.47, 754.12, 758.59, 760.84, 763.09, 769.79, 772.18, 776.65, 783.38, 787.86, 790.25, 794.72, 796.97, 805.93, 809.05, 812.06, 815.03, 818.01, 821.01, 823.99, 826.38, 830.85, 833.1, 842.06, 844.45, 848.92, 855.64, 860.12, 862.51, 866.98, 869.23, 878.19, 880.58, 885.05, 887.3, 890.27, 893.27, 896.25, 898.64, 903.11, 905.36, 914.32, 916.71, 921.18, 927.9, 932.39, 934.78, 939.24, 941.49, 950.45, 953.57, 956.59, 959.56, 962.54, 965.54, 968.52, 970.91, 975.38, 977.62, 986.58, 988.97, 993.44, 1000.17, 1004.65, 1007.04, 1011.51, 1013.76, 1022.71, 1025.1, 1029.57, 1031.82, 1034.8, 1037.8, 1040.78, 1043.17, 1047.64, 1049.89, 1058.85, 1061.24, 1065.7, 1070.2, 1072.43, 1076.91, 1079.3, 1083.77, 1086.02, 1094.98, 1097.37, 1101.83, 1106.33, 1108.56, 1110.79, 1131.11, 1133.5, 1137.97, 1142.47, 1144.69, 1149.17, 1151.56, 1156.03, 1158.28, 1167.24, 1169.63, 1174.1, 1178.6, 1180.82, 1185.3, 1194.41, 1203.37, 1205.76, 1210.23, 1216.96, 1221.44, 1223.83, 1228.29, 1230.54, 1239.5, 1242.62, 1245.64, 1248.61, 1251.59, 1254.59, 1257.57, 1259.96, 1264.43, 1266.68, 1275.63, 1278.02, 1282.49, 1289.22, 1293.7, 1296.09, 1300.56, 1302.81, 1311.76, 1314.16, 1318.62, 1320.87, 1323.85, 1326.85, 1329.83, 1332.22, 1336.69, 1338.94};
int lastNote = -1;

void setup_3()
{
}

boolean draw_3()
{
  if (!(cubeCt == 5 || cubeCt == 6  || cubeCt == 7))
  {
    return false;
  }
  
  if (cubeNewData)
  {
    float time = cubeX + 45.0 * 3.0 * (cubePy-3);
    
    if(cubeY > 20.0)
    {
      time += 0.0;
    }
    else if(cubeY > 10.0)
    {
      time += 45.0;
    }
    else
    {
      time += 90.0;
    }

    for(int i=0;i<310;i++)
    {
      if(time>=noteStart[i] && time<=noteEnd[i])
      {
        if( i != lastNote )
        {
          if(lastApp == 3)
            playSample("data/"+nf(i, 5)+".mp3");
          lastNote = i;
        }
        i=310;
      }
    }
  }
  
  // Draw title
  fill(128);
  textSize(40);
  textAlign(CENTER);
  text("Demo 3", width/2, 60);
    
  return true;
}
