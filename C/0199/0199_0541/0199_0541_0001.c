#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed char v5 (signed char, unsigned int, signed char);
extern signed char (*v6) (signed char, unsigned int, signed char);
signed short v7 (unsigned int, signed short, unsigned short);
signed short (*v8) (unsigned int, signed short, unsigned short) = v7;
extern signed int v9 (signed int, signed short, unsigned int);
extern signed int (*v10) (signed int, signed short, unsigned int);
extern signed char v11 (signed char, unsigned short, signed int, signed char);
extern signed char (*v12) (signed char, unsigned short, signed int, signed char);
unsigned char v13 (signed char, signed char, signed char, signed char);
unsigned char (*v14) (signed char, signed char, signed char, signed char) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned short, signed char, unsigned int, unsigned int);
extern signed short (*v18) (unsigned short, signed char, unsigned int, unsigned int);
extern signed int v19 (signed short, unsigned int, signed char);
extern signed int (*v20) (signed short, unsigned int, signed char);
extern unsigned char v21 (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v22) (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern unsigned short v27 (signed short, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int);
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 7U;
signed int v61 = 0;
unsigned int v60 = 0U;

unsigned char v13 (signed char v63, signed char v64, signed char v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 0;
signed short v68 = -4;
signed short v67 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v70, signed short v71, unsigned short v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 1;
signed char v74 = -2;
signed short v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed char v78 = -1;
signed int v77 = 1;
unsigned int v76 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed char v79;
unsigned int v80;
signed char v81;
signed char v82;
v79 = -1 + v78;
v80 = 1U + v76;
v81 = v78 - v78;
v82 = v5 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 16: 
return 7;
default: abort ();
}
}
}
}
