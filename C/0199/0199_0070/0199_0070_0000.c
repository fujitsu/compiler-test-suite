#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char, signed int, signed int);
extern unsigned char (*v2) (unsigned int, signed char, signed int, signed int);
extern signed short v3 (signed char);
extern signed short (*v4) (signed char);
extern void v5 (unsigned int, unsigned char, unsigned int);
extern void (*v6) (unsigned int, unsigned char, unsigned int);
extern unsigned short v7 (signed short, signed short, unsigned char);
extern unsigned short (*v8) (signed short, signed short, unsigned char);
void v9 (signed short, unsigned int, signed char, unsigned char);
void (*v10) (signed short, unsigned int, signed char, unsigned char) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern void v15 (unsigned short, unsigned char, signed char, unsigned char);
extern void (*v16) (unsigned short, unsigned char, signed char, unsigned char);
extern unsigned int v17 (unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned int);
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
extern signed int v21 (signed int, unsigned int);
extern signed int (*v22) (signed int, unsigned int);
signed char v23 (unsigned char, unsigned int, unsigned int, unsigned int);
signed char (*v24) (unsigned char, unsigned int, unsigned int, unsigned int) = v23;
static signed short v25 (void);
static signed short (*v26) (void) = v25;
extern void v27 (unsigned int, signed char, unsigned int);
extern void (*v28) (unsigned int, signed char, unsigned int);
extern unsigned short v29 (unsigned char, unsigned short, unsigned short, signed char);
extern unsigned short (*v30) (unsigned char, unsigned short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned int v32 = 4U;
unsigned short v31 = 1;

static signed short v25 (void)
{
{
for (;;) {
unsigned int v36 = 7U;
unsigned int v35 = 4U;
signed short v34 = 1;
trace++;
switch (trace)
{
case 3: 
return v34;
default: abort ();
}
}
}
}

signed char v23 (unsigned char v37, unsigned int v38, unsigned int v39, unsigned int v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 0;
unsigned int v42 = 6U;
signed char v41 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v44, unsigned int v45, signed char v46, unsigned char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 1;
unsigned short v49 = 4;
signed char v48 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed short v51;
v51 = v25 ();
history[history_index++] = (int)v51;
}
break;
case 4: 
{
signed int v52;
unsigned int v53;
signed int v54;
v52 = 2 - -4;
v53 = 5U + v45;
v54 = v21 (v52, v53);
history[history_index++] = (int)v54;
}
break;
case 8: 
{
signed char v55;
signed short v56;
v55 = v48 - v46;
v56 = v13 (v55);
history[history_index++] = (int)v56;
}
break;
case 14: 
return;
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
unsigned int v59;
signed char v60;
signed int v61;
signed int v62;
unsigned char v63;
v59 = v32 - 4U;
v60 = v33 - -3;
v61 = 1 + 3;
v62 = -4 - 1;
v63 = v1 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
