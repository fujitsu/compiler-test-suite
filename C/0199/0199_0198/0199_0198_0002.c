#include <stdlib.h>
extern signed int v3 (unsigned short, signed char, unsigned int);
extern signed int (*v4) (unsigned short, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed int, signed char);
extern unsigned int (*v6) (unsigned int, signed int, signed char);
extern signed int v7 (signed short, unsigned char);
extern signed int (*v8) (signed short, unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern unsigned int v13 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v14) (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned short v15 (unsigned short, signed short, signed int);
extern unsigned short (*v16) (unsigned short, signed short, signed int);
extern void v17 (signed short);
extern void (*v18) (signed short);
unsigned int v19 (signed short, signed short);
unsigned int (*v20) (signed short, signed short) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned short v25 (signed int, unsigned short);
unsigned short (*v26) (signed int, unsigned short) = v25;
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern void v29 (signed int, signed short, signed int, signed short);
extern void (*v30) (signed int, signed short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 7U;
signed short v100 = 0;
unsigned char v99 = 4;

unsigned short v25 (signed int v102, unsigned short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -2;
signed char v105 = 2;
unsigned int v104 = 5U;
trace++;
switch (trace)
{
case 5: 
return v103;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v19 (signed short v107, signed short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 0U;
unsigned char v110 = 2;
unsigned short v109 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
