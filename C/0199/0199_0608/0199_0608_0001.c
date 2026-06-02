#include <stdlib.h>
extern unsigned char v5 (unsigned short, signed char, unsigned int);
extern unsigned char (*v6) (unsigned short, signed char, unsigned int);
extern unsigned char v7 (unsigned short, signed short, unsigned short);
extern unsigned char (*v8) (unsigned short, signed short, unsigned short);
unsigned char v9 (signed short, signed int);
unsigned char (*v10) (signed short, signed int) = v9;
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed short, unsigned char);
extern signed char (*v14) (signed short, unsigned char);
extern unsigned short v15 (signed short, signed short, signed char);
extern unsigned short (*v16) (signed short, signed short, signed char);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
unsigned short v21 (unsigned char, unsigned short, unsigned char, unsigned int);
unsigned short (*v22) (unsigned char, unsigned short, unsigned char, unsigned int) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern signed int v29 (unsigned char, signed char);
extern signed int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v88 = -4;
unsigned int v87 = 0U;
unsigned char v86 = 1;

unsigned short v21 (unsigned char v89, unsigned short v90, unsigned char v91, unsigned int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 3;
unsigned int v94 = 1U;
unsigned int v93 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v96, signed int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = 1;
signed int v99 = 3;
unsigned char v98 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
