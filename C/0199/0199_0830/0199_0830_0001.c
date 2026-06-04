#include <stdlib.h>
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (signed int, unsigned int);
extern signed char (*v6) (signed int, unsigned int);
extern void v7 (unsigned short, signed short);
extern void (*v8) (unsigned short, signed short);
extern unsigned short v9 (unsigned short, signed int);
extern unsigned short (*v10) (unsigned short, signed int);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed char v13 (signed int, signed short);
extern signed char (*v14) (signed int, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned int, signed char);
extern signed short (*v18) (unsigned char, unsigned int, unsigned int, signed char);
signed short v19 (signed int, signed char, unsigned short, signed char);
signed short (*v20) (signed int, signed char, unsigned short, signed char) = v19;
extern signed int v21 (unsigned int, unsigned short);
extern signed int (*v22) (unsigned int, unsigned short);
extern unsigned short v23 (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned int, signed char, unsigned int);
extern signed int v25 (unsigned char, signed char, signed short, signed char);
extern signed int (*v26) (unsigned char, signed char, signed short, signed char);
extern void v27 (unsigned int, unsigned int, signed char, unsigned int);
extern void (*v28) (unsigned int, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v90 = 0;
signed char v89 = 3;
signed char v88 = -2;

signed short v19 (signed int v91, signed char v92, unsigned short v93, signed char v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 1;
signed int v96 = 2;
unsigned char v95 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v98;
unsigned int v99;
signed char v100;
unsigned int v101;
unsigned short v102;
v98 = 3U + 5U;
v99 = 3U + 6U;
v100 = v92 + v94;
v101 = 2U - 3U;
v102 = v23 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 3: 
{
unsigned int v103;
unsigned int v104;
signed char v105;
unsigned int v106;
unsigned short v107;
v103 = 1U + 7U;
v104 = 2U + 0U;
v105 = v92 - v94;
v106 = 7U - 3U;
v107 = v23 (v103, v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 7: 
return -1;
default: abort ();
}
}
}
}
