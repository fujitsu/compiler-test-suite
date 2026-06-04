#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned short v3 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned short (*v4) (unsigned char, signed int, unsigned char, unsigned short);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
signed short v23 (unsigned char, unsigned int, signed char);
signed short (*v24) (unsigned char, unsigned int, signed char) = v23;
extern unsigned int v25 (signed short);
extern unsigned int (*v26) (signed short);
unsigned short v27 (signed short, unsigned int, signed char, unsigned int);
unsigned short (*v28) (signed short, unsigned int, signed char, unsigned int) = v27;
extern void v29 (signed int, signed char);
extern void (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v95 = -4;
unsigned short v94 = 3;
signed short v93 = -2;

unsigned short v27 (signed short v96, unsigned int v97, signed char v98, unsigned int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 2U;
unsigned char v101 = 6;
signed int v100 = -1;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v103;
v103 = v17 ();
history[history_index++] = (int)v103;
}
break;
case 4: 
{
unsigned char v104;
v104 = v17 ();
history[history_index++] = (int)v104;
}
break;
case 7: 
{
unsigned char v105;
v105 = v17 ();
history[history_index++] = (int)v105;
}
break;
case 9: 
return 3;
case 11: 
return 0;
case 14: 
return 4;
default: abort ();
}
}
}
}

signed short v23 (unsigned char v106, unsigned int v107, signed char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 0U;
signed char v110 = -1;
unsigned short v109 = 4;
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
unsigned short v114 = 7;
unsigned short v113 = 5;
unsigned int v112 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
