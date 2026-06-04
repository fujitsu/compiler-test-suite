#include <stdlib.h>
extern void v3 (signed int, signed short);
extern void (*v4) (signed int, signed short);
extern unsigned int v5 (signed char, unsigned short, unsigned short);
extern unsigned int (*v6) (signed char, unsigned short, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern unsigned int v13 (unsigned char, signed char, unsigned short);
extern unsigned int (*v14) (unsigned char, signed char, unsigned short);
extern unsigned char v15 (signed int, signed char, signed int, unsigned int);
extern unsigned char (*v16) (signed int, signed char, signed int, unsigned int);
extern unsigned int v17 (unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned char, unsigned char);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern unsigned char v21 (unsigned short);
extern unsigned char (*v22) (unsigned short);
extern void v23 (unsigned int, signed char, unsigned int);
extern void (*v24) (unsigned int, signed char, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
void v27 (unsigned char);
void (*v28) (unsigned char) = v27;
extern unsigned char v29 (unsigned int, signed char);
extern unsigned char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 3;
signed char v104 = 1;
signed short v103 = -4;

void v27 (unsigned char v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 3;
signed char v108 = -1;
signed char v107 = 0;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
unsigned char v112 = 1;
signed char v111 = 0;
unsigned short v110 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed char v113;
unsigned int v114;
signed short v115;
v113 = -1 - v111;
v114 = 0U - 3U;
v115 = v11 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 4: 
{
unsigned int v116;
signed char v117;
unsigned int v118;
v116 = 6U - 1U;
v117 = 2 - v111;
v118 = 2U - 1U;
v23 (v116, v117, v118);
}
break;
case 10: 
{
unsigned int v119;
signed char v120;
unsigned int v121;
v119 = 1U + 7U;
v120 = v111 - -4;
v121 = 1U + 6U;
v23 (v119, v120, v121);
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}
