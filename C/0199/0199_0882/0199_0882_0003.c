#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (signed char);
extern void (*v6) (signed char);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned char v9 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned char (*v10) (unsigned char, signed int, unsigned int, unsigned short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
unsigned char v21 (unsigned char);
unsigned char (*v22) (unsigned char) = v21;
static signed int v23 (signed int);
static signed int (*v24) (signed int) = v23;
extern unsigned short v25 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned short (*v26) (unsigned char, unsigned short, unsigned char, signed short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned short, unsigned int);
extern signed char (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 7;
signed short v81 = -3;
signed int v80 = -3;

static signed int v23 (signed int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 5;
unsigned short v85 = 6;
unsigned int v84 = 0U;
trace++;
switch (trace)
{
case 3: 
return v83;
case 5: 
return v83;
case 9: 
return -3;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 0;
signed char v89 = -2;
unsigned short v88 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed char v93 = 2;
signed short v92 = -2;
unsigned char v91 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed int v94;
signed int v95;
v94 = -1 - 0;
v95 = v23 (v94);
history[history_index++] = (int)v95;
}
break;
case 4: 
{
signed int v96;
signed int v97;
v96 = -4 + -2;
v97 = v23 (v96);
history[history_index++] = (int)v97;
}
break;
case 6: 
return 2U;
case 8: 
{
signed int v98;
signed int v99;
v98 = 1 - -3;
v99 = v23 (v98);
history[history_index++] = (int)v99;
}
break;
case 10: 
{
unsigned char v100;
unsigned short v101;
unsigned char v102;
signed short v103;
unsigned short v104;
v100 = v91 + 0;
v101 = 2 + 0;
v102 = 3 + v91;
v103 = -2 + v92;
v104 = v25 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed int v107 = 1;
unsigned char v106 = 4;
signed int v105 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
