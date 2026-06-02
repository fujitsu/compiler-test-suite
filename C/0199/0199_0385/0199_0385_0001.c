#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned short);
extern unsigned short v5 (unsigned short, unsigned int, signed char, signed short);
extern unsigned short (*v6) (unsigned short, unsigned int, signed char, signed short);
extern signed char v7 (signed int, unsigned short, unsigned short);
extern signed char (*v8) (signed int, unsigned short, unsigned short);
extern signed short v9 (signed short, signed short);
extern signed short (*v10) (signed short, signed short);
extern signed short v11 (unsigned char, signed char, unsigned short);
extern signed short (*v12) (unsigned char, signed char, unsigned short);
extern void v13 (signed short, unsigned char, signed int, unsigned short);
extern void (*v14) (signed short, unsigned char, signed int, unsigned short);
extern unsigned char v15 (signed int, signed short, unsigned char, unsigned short);
extern unsigned char (*v16) (signed int, signed short, unsigned char, unsigned short);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed int v21 (signed char, unsigned short);
extern signed int (*v22) (signed char, unsigned short);
unsigned int v23 (signed short, unsigned char, signed int, unsigned int);
unsigned int (*v24) (signed short, unsigned char, signed int, unsigned int) = v23;
extern unsigned char v25 (signed short, unsigned int, unsigned short);
extern unsigned char (*v26) (signed short, unsigned int, unsigned short);
extern unsigned short v27 (unsigned short, signed char, signed short);
extern unsigned short (*v28) (unsigned short, signed char, signed short);
extern unsigned short v29 (signed int, unsigned char, signed int);
extern unsigned short (*v30) (signed int, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v54 = 5;
unsigned short v53 = 5;
unsigned char v52 = 4;

unsigned int v23 (signed short v55, unsigned char v56, signed int v57, unsigned int v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = -3;
signed char v60 = 2;
unsigned int v59 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed char v64 = 2;
unsigned short v63 = 6;
signed char v62 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed int v65;
unsigned char v66;
signed int v67;
unsigned short v68;
v65 = -1 - -2;
v66 = 0 - 0;
v67 = -2 + 3;
v68 = v29 (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 4: 
return 6U;
case 8: 
{
signed int v69;
unsigned char v70;
signed int v71;
unsigned short v72;
v69 = -4 - -4;
v70 = 3 + 7;
v71 = -1 + -2;
v72 = v29 (v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 10: 
return 0U;
default: abort ();
}
}
}
}
