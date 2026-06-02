#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (signed short, signed char, signed int, signed short);
extern signed char (*v4) (signed short, signed char, signed int, signed short);
unsigned short v5 (unsigned char);
unsigned short (*v6) (unsigned char) = v5;
extern signed int v7 (unsigned char, unsigned char, unsigned short, signed short);
extern signed int (*v8) (unsigned char, unsigned char, unsigned short, signed short);
extern unsigned short v9 (unsigned char, signed char);
extern unsigned short (*v10) (unsigned char, signed char);
extern signed char v11 (unsigned int, unsigned int);
extern signed char (*v12) (unsigned int, unsigned int);
signed int v13 (unsigned short, unsigned int, signed char, signed char);
signed int (*v14) (unsigned short, unsigned int, signed char, signed char) = v13;
extern signed short v15 (unsigned short, unsigned short, signed short);
extern signed short (*v16) (unsigned short, unsigned short, signed short);
extern unsigned int v17 (unsigned short, unsigned short, unsigned char);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned int v19 (signed int, unsigned char, signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned char, signed int, unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed short, unsigned short, signed char);
extern unsigned int (*v24) (unsigned int, signed short, unsigned short, signed char);
extern signed int v25 (signed short, unsigned short);
extern signed int (*v26) (signed short, unsigned short);
extern unsigned int v27 (signed short, signed int, unsigned short);
extern unsigned int (*v28) (signed short, signed int, unsigned short);
extern signed char v29 (unsigned char);
extern signed char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v61 = 3;
unsigned short v60 = 2;
signed short v59 = 0;

signed int v13 (unsigned short v62, unsigned int v63, signed char v64, signed char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -3;
unsigned int v67 = 4U;
signed int v66 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = -2;
unsigned int v71 = 0U;
signed int v70 = 2;
trace++;
switch (trace)
{
case 1: 
return 0;
case 5: 
{
unsigned int v73;
unsigned int v74;
signed char v75;
v73 = v71 + 4U;
v74 = 6U + v71;
v75 = v11 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 7: 
{
unsigned char v76;
signed char v77;
v76 = v69 + 4;
v77 = v29 (v76);
history[history_index++] = (int)v77;
}
break;
case 9: 
{
unsigned int v78;
unsigned int v79;
signed char v80;
v78 = v71 - v71;
v79 = v71 - 7U;
v80 = v11 (v78, v79);
history[history_index++] = (int)v80;
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}
