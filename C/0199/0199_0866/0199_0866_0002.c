#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern unsigned char v5 (unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int);
extern unsigned char v7 (signed short, unsigned short, unsigned char);
extern unsigned char (*v8) (signed short, unsigned short, unsigned char);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern signed char v13 (unsigned char, signed char, unsigned short, unsigned int);
extern signed char (*v14) (unsigned char, signed char, unsigned short, unsigned int);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned short v19 (signed int);
unsigned short (*v20) (signed int) = v19;
extern signed int v21 (unsigned short);
extern signed int (*v22) (unsigned short);
extern signed int v23 (unsigned short, signed int);
extern signed int (*v24) (unsigned short, signed int);
extern signed int v25 (unsigned char, unsigned char);
extern signed int (*v26) (unsigned char, unsigned char);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned char v29 (unsigned int, signed char, unsigned short);
extern unsigned char (*v30) (unsigned int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v89 = -4;
unsigned int v88 = 0U;
signed short v87 = -1;

unsigned short v19 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 1;
unsigned short v92 = 7;
unsigned char v91 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
signed short v96 = 3;
unsigned int v95 = 0U;
signed char v94 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
unsigned char v99 = 3;
unsigned char v98 = 6;
unsigned int v97 = 2U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v100;
unsigned char v101;
signed int v102;
v100 = v98 - v99;
v101 = v99 - v99;
v102 = v25 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 2: 
{
unsigned char v103;
unsigned char v104;
signed int v105;
v103 = v99 - v98;
v104 = v98 + 4;
v105 = v25 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 4: 
return v98;
case 5: 
{
unsigned int v106;
signed char v107;
unsigned short v108;
unsigned char v109;
v106 = v97 + v97;
v107 = -1 + 0;
v108 = 7 + 7;
v109 = v29 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 13: 
return v98;
default: abort ();
}
}
}
}
