#include <stdlib.h>
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
signed char v5 (unsigned char);
signed char (*v6) (unsigned char) = v5;
extern signed int v7 (unsigned int, signed int, unsigned int, signed char);
extern signed int (*v8) (unsigned int, signed int, unsigned int, signed char);
extern unsigned int v9 (signed int, unsigned int, signed int);
extern unsigned int (*v10) (signed int, unsigned int, signed int);
signed short v11 (unsigned int);
signed short (*v12) (unsigned int) = v11;
extern unsigned int v13 (unsigned short, unsigned char, signed int, unsigned char);
extern unsigned int (*v14) (unsigned short, unsigned char, signed int, unsigned char);
extern signed short v15 (signed int, unsigned int, signed char, unsigned int);
extern signed short (*v16) (signed int, unsigned int, signed char, unsigned int);
unsigned short v17 (unsigned short);
unsigned short (*v18) (unsigned short) = v17;
extern unsigned int v19 (signed short, unsigned short, signed short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed short, signed int);
extern unsigned short v21 (signed char, signed char, unsigned char, signed int);
extern unsigned short (*v22) (signed char, signed char, unsigned char, signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern void v25 (unsigned char, unsigned char, unsigned int, signed short);
extern void (*v26) (unsigned char, unsigned char, unsigned int, signed short);
extern signed short v27 (signed int, signed short);
extern signed short (*v28) (signed int, signed short);
extern signed int v29 (unsigned char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v61 = 2;
unsigned short v60 = 2;
unsigned char v59 = 5;

unsigned short v17 (unsigned short v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 3;
unsigned char v64 = 4;
unsigned short v63 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = -4;
unsigned int v68 = 3U;
signed int v67 = -2;
trace++;
switch (trace)
{
case 5: 
{
signed char v70;
signed char v71;
unsigned char v72;
signed int v73;
unsigned short v74;
v70 = -1 + 2;
v71 = 2 + -1;
v72 = 1 + 3;
v73 = -1 + v67;
v74 = v21 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 7: 
{
signed char v75;
signed char v76;
unsigned char v77;
signed int v78;
unsigned short v79;
v75 = -4 - -1;
v76 = 0 - 0;
v77 = 0 - 4;
v78 = 1 + v67;
v79 = v21 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 9: 
{
signed char v80;
signed char v81;
unsigned char v82;
signed int v83;
unsigned short v84;
v80 = 0 + -3;
v81 = -2 - 2;
v82 = 2 + 0;
v83 = 2 - v67;
v84 = v21 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed char v5 (unsigned char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -1;
signed short v87 = -1;
signed int v86 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
