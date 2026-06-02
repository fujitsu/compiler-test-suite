#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned short v5 (unsigned int, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned int, unsigned short);
extern void v7 (signed int, unsigned char);
extern void (*v8) (signed int, unsigned char);
extern signed int v9 (unsigned char, unsigned short, signed char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned short, signed char, unsigned int);
unsigned int v11 (unsigned char);
unsigned int (*v12) (unsigned char) = v11;
extern unsigned int v13 (unsigned char, signed short, unsigned short);
extern unsigned int (*v14) (unsigned char, signed short, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed int v17 (unsigned short, signed short);
signed int (*v18) (unsigned short, signed short) = v17;
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed char v21 (signed short, unsigned char, signed char, unsigned char);
extern signed char (*v22) (signed short, unsigned char, signed char, unsigned char);
extern unsigned int v25 (signed short, unsigned int, signed int, unsigned short);
extern unsigned int (*v26) (signed short, unsigned int, signed int, unsigned short);
signed short v27 (unsigned short);
signed short (*v28) (unsigned short) = v27;
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v93 = 0U;
signed short v92 = 1;
unsigned char v91 = 2;

unsigned int v29 (void)
{
{
for (;;) {
unsigned char v96 = 4;
unsigned char v95 = 1;
signed int v94 = 3;
trace++;
switch (trace)
{
case 4: 
return 3U;
case 6: 
return 6U;
case 8: 
return 4U;
default: abort ();
}
}
}
}

signed short v27 (unsigned short v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 0;
unsigned int v99 = 5U;
unsigned char v98 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned short v101, signed short v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = 3;
signed char v104 = -2;
signed short v103 = -2;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 6;
unsigned short v108 = 0;
unsigned int v107 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
