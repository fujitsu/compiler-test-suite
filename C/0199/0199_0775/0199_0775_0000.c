#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, signed int, unsigned short, signed short);
extern signed short (*v2) (signed short, signed int, unsigned short, signed short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned char, signed int, unsigned int);
extern signed char (*v6) (unsigned char, signed int, unsigned int);
extern signed int v7 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v8) (unsigned int, unsigned int, signed char, signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed short v13 (unsigned int, signed short, unsigned int, signed int);
extern signed short (*v14) (unsigned int, signed short, unsigned int, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
static unsigned char v19 (signed short, signed short);
static unsigned char (*v20) (signed short, signed short) = v19;
extern void v21 (unsigned int, signed char);
extern void (*v22) (unsigned int, signed char);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern signed short v27 (signed int, unsigned int, unsigned char, unsigned short);
extern signed short (*v28) (signed int, unsigned int, unsigned char, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned char v32 = 6;
unsigned char v31 = 2;

void v23 (void)
{
{
for (;;) {
signed short v36 = -1;
signed char v35 = 3;
signed short v34 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed short v37;
signed short v38;
unsigned char v39;
v37 = v36 - v36;
v38 = 2 + v36;
v39 = v19 (v37, v38);
history[history_index++] = (int)v39;
}
break;
case 8: 
{
signed int v40;
unsigned short v41;
v40 = -4 - 1;
v41 = v25 (v40);
history[history_index++] = (int)v41;
}
break;
case 10: 
{
signed short v42;
signed short v43;
unsigned char v44;
v42 = v36 - -3;
v43 = v34 - 0;
v44 = v19 (v42, v43);
history[history_index++] = (int)v44;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

static unsigned char v19 (signed short v45, signed short v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -1;
unsigned int v48 = 3U;
unsigned int v47 = 6U;
trace++;
switch (trace)
{
case 7: 
return 5;
case 11: 
return 1;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v52;
signed int v53;
unsigned short v54;
signed short v55;
signed short v56;
v52 = -4 - -2;
v53 = v33 + 1;
v54 = 5 + 1;
v55 = -4 + 3;
v56 = v1 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
