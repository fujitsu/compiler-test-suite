#include <stdlib.h>
unsigned int v3 (unsigned short, unsigned int);
unsigned int (*v4) (unsigned short, unsigned int) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed int, unsigned char, signed short);
extern signed short (*v8) (signed int, unsigned char, signed short);
extern unsigned short v9 (unsigned short, unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, unsigned short, signed short);
extern unsigned int v11 (unsigned int, signed char);
extern unsigned int (*v12) (unsigned int, signed char);
void v13 (signed char, signed char);
void (*v14) (signed char, signed char) = v13;
extern unsigned short v15 (unsigned int, unsigned char);
extern unsigned short (*v16) (unsigned int, unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed char v21 (unsigned int, signed short, signed char);
extern signed char (*v22) (unsigned int, signed short, signed char);
extern signed int v23 (signed char, signed int);
extern signed int (*v24) (signed char, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned int, signed short, signed char);
extern unsigned int (*v28) (unsigned char, unsigned int, signed short, signed char);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v60 = 4;
signed short v59 = -4;
unsigned char v58 = 6;

void v13 (signed char v61, signed char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 3;
signed short v64 = 0;
signed char v63 = 2;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v66;
signed short v67;
signed char v68;
signed char v69;
v66 = 5U + 5U;
v67 = v64 + -4;
v68 = v63 - v61;
v69 = v21 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 10: 
{
unsigned int v70;
signed short v71;
signed char v72;
signed char v73;
v70 = 4U + 4U;
v71 = v64 + v64;
v72 = v63 + v63;
v73 = v21 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v74, unsigned int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 2;
signed int v77 = -3;
signed char v76 = -4;
trace++;
switch (trace)
{
case 3: 
{
signed int v79;
unsigned char v80;
signed short v81;
signed short v82;
v79 = v77 - v77;
v80 = 7 + 1;
v81 = -1 - -1;
v82 = v7 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 17: 
return v75;
default: abort ();
}
}
}
}
