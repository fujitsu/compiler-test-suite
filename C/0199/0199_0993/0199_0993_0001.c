#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned short, unsigned int, signed int, unsigned short);
extern signed int (*v6) (unsigned short, unsigned int, signed int, unsigned short);
extern signed short v7 (signed char, signed char, signed char, signed char);
extern signed short (*v8) (signed char, signed char, signed char, signed char);
extern signed short v9 (signed short, unsigned int);
extern signed short (*v10) (signed short, unsigned int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
signed int v19 (unsigned char, unsigned char, signed char);
signed int (*v20) (unsigned char, unsigned char, signed char) = v19;
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (unsigned short, unsigned int);
extern signed int (*v26) (unsigned short, unsigned int);
extern unsigned short v27 (unsigned char, signed short, unsigned char);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v68 = 1;
unsigned short v67 = 7;
signed char v66 = -2;

unsigned char v21 (void)
{
{
for (;;) {
signed int v71 = -2;
unsigned char v70 = 3;
unsigned char v69 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v72, unsigned char v73, signed char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 3;
unsigned int v76 = 1U;
signed short v75 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v78;
v78 = v23 ();
history[history_index++] = (int)v78;
}
break;
case 9: 
{
signed short v79;
v79 = v29 ();
history[history_index++] = (int)v79;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v82 = 3;
unsigned int v81 = 0U;
unsigned char v80 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
