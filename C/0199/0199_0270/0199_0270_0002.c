#include <stdlib.h>
unsigned int v1 (signed char, signed int, signed char);
unsigned int (*v2) (signed char, signed int, signed char) = v1;
extern unsigned char v3 (signed short, signed char, signed int, signed short);
extern unsigned char (*v4) (signed short, signed char, signed int, signed short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned short v9 (unsigned short, unsigned short);
extern unsigned short (*v10) (unsigned short, unsigned short);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
extern signed int v13 (signed int, signed char, signed short);
extern signed int (*v14) (signed int, signed char, signed short);
extern unsigned int v15 (signed int, unsigned short, unsigned int);
extern unsigned int (*v16) (signed int, unsigned short, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned short v19 (signed short, unsigned int, signed int, unsigned char);
extern unsigned short (*v20) (signed short, unsigned int, signed int, unsigned char);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern unsigned int v23 (signed int, signed char, unsigned int, unsigned short);
extern unsigned int (*v24) (signed int, signed char, unsigned int, unsigned short);
extern unsigned short v25 (unsigned char, unsigned char, signed char, unsigned char);
extern unsigned short (*v26) (unsigned char, unsigned char, signed char, unsigned char);
extern signed int v27 (unsigned short, signed short, unsigned int, unsigned char);
extern signed int (*v28) (unsigned short, signed short, unsigned int, unsigned char);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v105 = 3;
signed int v104 = -3;
signed int v103 = 3;

unsigned int v1 (signed char v106, signed int v107, signed char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 3;
signed char v110 = -3;
unsigned char v109 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v112;
v112 = v17 ();
history[history_index++] = (int)v112;
}
break;
case 10: 
{
unsigned char v113;
v113 = v5 ();
history[history_index++] = (int)v113;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}
