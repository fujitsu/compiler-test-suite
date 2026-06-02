#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed char v7 (unsigned short, unsigned short);
extern signed char (*v8) (unsigned short, unsigned short);
extern void v9 (signed int, unsigned short, signed char, unsigned char);
extern void (*v10) (signed int, unsigned short, signed char, unsigned char);
unsigned short v11 (unsigned int, unsigned short, signed int, unsigned char);
unsigned short (*v12) (unsigned int, unsigned short, signed int, unsigned char) = v11;
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (void);
extern void (*v20) (void);
extern void v21 (signed short, signed int, unsigned short);
extern void (*v22) (signed short, signed int, unsigned short);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed int v27 (unsigned short, signed char);
extern signed int (*v28) (unsigned short, signed char);
unsigned short v29 (signed char, signed char, unsigned short);
unsigned short (*v30) (signed char, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v105 = 1;
signed char v104 = -2;
signed short v103 = 0;

unsigned short v29 (signed char v106, signed char v107, unsigned short v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = 1;
unsigned char v110 = 2;
signed short v109 = -1;
trace++;
switch (trace)
{
case 8: 
return v108;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v112, unsigned short v113, signed int v114, unsigned char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 1;
unsigned int v117 = 1U;
signed int v116 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
