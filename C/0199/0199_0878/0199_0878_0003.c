#include <stdlib.h>
unsigned int v3 (unsigned short, unsigned short);
unsigned int (*v4) (unsigned short, unsigned short) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern signed int v9 (unsigned int, signed short);
extern signed int (*v10) (unsigned int, signed short);
void v11 (signed char, signed short, signed short);
void (*v12) (signed char, signed short, signed short) = v11;
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
extern void v19 (unsigned char, unsigned char);
extern void (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (signed short, unsigned char, unsigned char);
extern unsigned int (*v26) (signed short, unsigned char, unsigned char);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v92 = 7U;
unsigned short v91 = 3;
signed char v90 = -3;

unsigned short v27 (void)
{
{
for (;;) {
signed short v95 = -3;
unsigned char v94 = 1;
unsigned short v93 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v96, signed short v97, signed short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -1;
unsigned short v100 = 3;
unsigned int v99 = 4U;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v102;
unsigned char v103;
v102 = 3 - 2;
v103 = v13 (v102);
history[history_index++] = (int)v103;
}
break;
case 9: 
{
unsigned int v104;
signed short v105;
signed int v106;
v104 = 7U - 3U;
v105 = 2 + v97;
v106 = v9 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 1;
unsigned int v110 = 2U;
signed int v109 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v112;
unsigned short v113;
v112 = v111 - v108;
v113 = v29 (v112);
history[history_index++] = (int)v113;
}
break;
case 15: 
return v110;
default: abort ();
}
}
}
}
