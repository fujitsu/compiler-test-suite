#include <stdlib.h>
unsigned char v1 (signed int, unsigned char, unsigned char);
unsigned char (*v2) (signed int, unsigned char, unsigned char) = v1;
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned int v7 (signed char, signed char);
extern unsigned int (*v8) (signed char, signed char);
extern unsigned char v9 (signed short, unsigned short, unsigned int);
extern unsigned char (*v10) (signed short, unsigned short, unsigned int);
extern signed int v13 (signed short, unsigned short);
extern signed int (*v14) (signed short, unsigned short);
extern void v15 (signed int, signed short, signed int);
extern void (*v16) (signed int, signed short, signed int);
signed char v17 (unsigned int, signed char, unsigned int, signed int);
signed char (*v18) (unsigned int, signed char, unsigned int, signed int) = v17;
extern signed short v19 (signed char, unsigned short, signed char);
extern signed short (*v20) (signed char, unsigned short, signed char);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
signed int v25 (unsigned int, unsigned short);
signed int (*v26) (unsigned int, unsigned short) = v25;
extern void v27 (unsigned char, signed short, unsigned int, signed short);
extern void (*v28) (unsigned char, signed short, unsigned int, signed short);
extern signed int v29 (unsigned short, signed char);
extern signed int (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v53 = 3;
signed short v52 = 2;
signed int v51 = 3;

signed int v25 (unsigned int v54, unsigned short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 2U;
unsigned char v57 = 1;
unsigned int v56 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned int v59, signed char v60, unsigned int v61, signed int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 2;
unsigned int v64 = 7U;
unsigned short v63 = 5;
trace++;
switch (trace)
{
case 3: 
return -4;
case 7: 
return -3;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned char v1 (signed int v66, unsigned char v67, unsigned char v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 1;
unsigned int v70 = 2U;
signed short v69 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v72;
unsigned short v73;
unsigned int v74;
unsigned char v75;
v72 = v69 - v69;
v73 = v71 - 7;
v74 = v70 - v70;
v75 = v9 (v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 10: 
{
unsigned int v76;
signed char v77;
unsigned int v78;
signed int v79;
signed char v80;
v76 = 3U - 5U;
v77 = -4 - -1;
v78 = v70 - v70;
v79 = v66 - -1;
v80 = v17 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 12: 
return v67;
default: abort ();
}
}
}
}
