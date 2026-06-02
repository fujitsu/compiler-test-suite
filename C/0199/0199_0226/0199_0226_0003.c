#include <stdlib.h>
unsigned int v1 (unsigned char, signed char, unsigned int);
unsigned int (*v2) (unsigned char, signed char, unsigned int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned char, signed short, unsigned char);
extern unsigned int (*v10) (unsigned char, signed short, unsigned char);
extern signed short v11 (signed int, signed int, unsigned int, signed char);
extern signed short (*v12) (signed int, signed int, unsigned int, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned short, unsigned short);
unsigned int v17 (signed char, unsigned char);
unsigned int (*v18) (signed char, unsigned char) = v17;
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
extern signed int v21 (signed char, signed char, unsigned short, unsigned short);
extern signed int (*v22) (signed char, signed char, unsigned short, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed int v25 (unsigned char, signed short);
extern signed int (*v26) (unsigned char, signed short);
signed int v27 (unsigned short, signed char, signed int, signed int);
signed int (*v28) (unsigned short, signed char, signed int, signed int) = v27;
extern signed short v29 (unsigned char, signed char, unsigned short, signed int);
extern signed short (*v30) (unsigned char, signed char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 6U;
signed short v74 = 1;
signed int v73 = -3;

signed int v27 (unsigned short v76, signed char v77, signed int v78, signed int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = 0;
unsigned int v81 = 2U;
unsigned char v80 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v83, unsigned char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = -1;
unsigned int v86 = 2U;
unsigned short v85 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v88, signed char v89, unsigned int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = -2;
unsigned int v92 = 0U;
unsigned short v91 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v94;
signed int v95;
unsigned int v96;
signed char v97;
signed short v98;
v94 = -3 - v93;
v95 = v93 + v93;
v96 = v92 - 0U;
v97 = v89 + 2;
v98 = v11 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 16: 
return v92;
default: abort ();
}
}
}
}
