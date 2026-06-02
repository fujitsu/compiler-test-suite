#include <stdlib.h>
unsigned int v1 (unsigned char, unsigned short);
unsigned int (*v2) (unsigned char, unsigned short) = v1;
extern signed int v3 (signed char, signed int);
extern signed int (*v4) (signed char, signed int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v9 (signed int, unsigned int, signed short, signed int);
extern signed short (*v10) (signed int, unsigned int, signed short, signed int);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern void v19 (signed char, unsigned char, unsigned short, signed char);
extern void (*v20) (signed char, unsigned char, unsigned short, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned short v27 (unsigned char);
extern unsigned short (*v28) (unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v105 = -2;
unsigned int v104 = 3U;
signed char v103 = -1;

unsigned int v1 (unsigned char v106, unsigned short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -2;
unsigned char v109 = 7;
unsigned int v108 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v111;
v111 = v5 ();
history[history_index++] = (int)v111;
}
break;
case 2: 
{
unsigned short v112;
v112 = v29 ();
history[history_index++] = (int)v112;
}
break;
case 4: 
return 4U;
case 5: 
return v108;
case 6: 
{
signed char v113;
signed int v114;
signed int v115;
v113 = 1 + 0;
v114 = -3 + -1;
v115 = v3 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 16: 
return 4U;
default: abort ();
}
}
}
}
