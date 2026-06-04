#include <stdlib.h>
extern signed int v3 (unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned int);
extern signed short v7 (unsigned char, signed int, signed char, unsigned short);
extern signed short (*v8) (unsigned char, signed int, signed char, unsigned short);
unsigned int v9 (unsigned short);
unsigned int (*v10) (unsigned short) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v15 (signed char, unsigned int, unsigned short);
extern unsigned int (*v16) (signed char, unsigned int, unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed char, unsigned short, unsigned int, unsigned int);
extern signed char (*v22) (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned int v23 (signed short, unsigned int, signed int, signed short);
extern unsigned int (*v24) (signed short, unsigned int, signed int, signed short);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
unsigned int v27 (signed int, unsigned short);
unsigned int (*v28) (signed int, unsigned short) = v27;
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 3U;
unsigned char v102 = 1;
signed int v101 = -3;

unsigned int v27 (signed int v104, unsigned short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 1;
signed short v107 = -3;
unsigned char v106 = 3;
trace++;
switch (trace)
{
case 6: 
return 1U;
case 8: 
return 4U;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = 0;
unsigned char v111 = 1;
signed char v110 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
