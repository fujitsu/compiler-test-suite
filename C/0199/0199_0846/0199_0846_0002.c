#include <stdlib.h>
unsigned short v3 (unsigned int);
unsigned short (*v4) (unsigned int) = v3;
extern signed short v5 (signed short, unsigned char);
extern signed short (*v6) (signed short, unsigned char);
extern unsigned short v7 (unsigned int, unsigned int, signed short);
extern unsigned short (*v8) (unsigned int, unsigned int, signed short);
extern signed char v9 (unsigned int, unsigned int, signed short, unsigned char);
extern signed char (*v10) (unsigned int, unsigned int, signed short, unsigned char);
extern unsigned int v11 (signed short, unsigned char, signed int, signed char);
extern unsigned int (*v12) (signed short, unsigned char, signed int, signed char);
extern signed short v13 (signed int, unsigned char, signed char, unsigned int);
extern signed short (*v14) (signed int, unsigned char, signed char, unsigned int);
extern signed char v15 (signed int, signed int, unsigned short);
extern signed char (*v16) (signed int, signed int, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed char, unsigned char, signed int, signed short);
extern void (*v24) (signed char, unsigned char, signed int, signed short);
unsigned short v25 (signed short, signed short);
unsigned short (*v26) (signed short, signed short) = v25;
extern unsigned char v27 (signed short, signed short, unsigned char);
extern unsigned char (*v28) (signed short, signed short, unsigned char);
signed int v29 (signed char, signed char, unsigned char);
signed int (*v30) (signed char, signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = 0;
unsigned char v85 = 4;
signed short v84 = -1;

signed int v29 (signed char v87, signed char v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 1;
unsigned short v91 = 1;
unsigned char v90 = 7;
trace++;
switch (trace)
{
case 6: 
return 2;
case 8: 
return 1;
default: abort ();
}
}
}
}

unsigned short v25 (signed short v93, signed short v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 3;
unsigned char v96 = 5;
unsigned int v95 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 3;
signed char v100 = 2;
signed int v99 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v102;
unsigned char v103;
signed int v104;
signed short v105;
v102 = -3 + v100;
v103 = v101 + 3;
v104 = v99 + v99;
v105 = -1 + 1;
v23 (v102, v103, v104, v105);
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
